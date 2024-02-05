import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import 'package:intl/intl.dart';

import '../../../models/dashboard/atg_model.dart';

class ATGDashboardData extends StatefulWidget {
  const ATGDashboardData({
    Key? key,
  }) : super(key: key);

  @override
  State<ATGDashboardData> createState() => _ATGDashboardDataState();
}

class _ATGDashboardDataState extends State<ATGDashboardData> {
  late List<ATGModel> list;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    list = ATGModel.list;

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
        if (item.levelBarrel != null &&
            item.volumeChangeBarrel != null &&
            item.avgTempCelcius != null &&
            item.waterLevelMeter != null &&
            item.productTempCelcius != null) {
          item.levelBarrel = item.levelBarrel! + 10;
          item.volumeChangeBarrel = item.volumeChangeBarrel! * 2;
          item.avgTempCelcius = item.avgTempCelcius! - 5;
          item.waterLevelMeter = item.waterLevelMeter! + 25.1;
          item.productTempCelcius = item.productTempCelcius! + 15;
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
            width: 375,
            height: 100,
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
                        Flexible(
                          child: Text(
                            list[index].alarm,
                            style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
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
                                list[index].levelBarrel?.toString() ?? "",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                list[index].volumeChangeBarrel?.toString() ??
                                    "",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                list[index].avgTempCelcius?.toString() ?? "",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                list[index].waterLevelMeter?.toString() ?? "",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                list[index].productTempCelcius?.toString() ??
                                    "",
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
