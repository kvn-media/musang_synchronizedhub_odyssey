import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:intl/intl.dart';

import '../../../models/dashboard/flowmeter_model.dart';

class FlowMeterDashboardData extends StatefulWidget {
  const FlowMeterDashboardData({
    super.key,
  });

  @override
  State<FlowMeterDashboardData> createState() => _FlowMeterDashboardDataState();
}

class _FlowMeterDashboardDataState extends State<FlowMeterDashboardData> {
  late List<FlowmeterModel> list;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    list = FlowmeterModel.list;

    // Set up the timer
    timer = Timer.periodic(Duration(seconds: 5), (Timer t) {
      updateData();
    });
  }

  @override
  void dispose() {
    // Cancel the timer when the widget is disposed
    timer.cancel();
    super.dispose();
  }

  void updateData() {
    setState(() {
      // Update data in here, hints change timestamps, values, etc
      for (var item in list) {
        if (item.flowRateGpm != null &&
            item.totalFlowGalon != null &&
            item.tempFahrenheit != null &&
            item.pressurePsi != null &&
            item.densitylbGal != null &&
            item.viscosityCp != null &&
            item.apiGravity != null) {
          item.flowRateGpm = item.flowRateGpm! + 10;
          item.totalFlowGalon = item.totalFlowGalon! * 2;
          item.tempFahrenheit = item.tempFahrenheit! - 5;
          item.pressurePsi = item.pressurePsi! + 70;
          item.densitylbGal = item.densitylbGal! + 7.5;
          item.viscosityCp = item.viscosityCp! + 10;
          item.timestamp =
              DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: list[index].onPress,
          child: SizedBox(
            width: 390,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.only(right: 10, top: 5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade400.withOpacity(0.2),
                  image: DecorationImage(
                    opacity: 0.5,
                    image: Svg(list[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            list[index].timestamp,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        // ElevatedButton(
                        //   onPressed: () {},
                        //   style: ElevatedButton.styleFrom(
                        //     shape: const CircleBorder(),
                        //     foregroundColor: Colors.white,
                        //     backgroundColor: const Color(0xff272727),
                        //   ),
                        //   child: const Icon(
                        //     Icons.play_arrow,
                        //   ),
                        // ),
                        // const SizedBox(
                        //   width: 10,
                        // ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                list[index].flowRateGpm?.toString() ?? "",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                list[index].totalFlowGalon?.toString() ?? "",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                list[index].tempFahrenheit?.toString() ?? "",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                list[index].pressurePsi?.toString() ?? "",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                list[index].densitylbGal?.toString() ?? "",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                list[index].viscosityCp?.toString() ?? "",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                list[index].apiGravity?.toString() ?? "",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
