import 'package:flutter/material.dart';
import 'package:musang_syncronizehub_odyssey/features/core/controllers/atg_controller.dart';
import 'package:musang_syncronizehub_odyssey/features/oil_volume_animation/volume_animation_controller.dart';
import 'package:musang_syncronizehub_odyssey/features/oil_volume_animation/volume_slide_icon.dart';

class OilVolumeAnimationPage extends StatefulWidget {
  final ATGBusinessLogic atgController;

  OilVolumeAnimationPage({required this.atgController, super.key});

  static PageRoute route(ATGBusinessLogic atgController) => MaterialPageRoute(
      builder: (_) => OilVolumeAnimationPage(atgController: atgController));

  @override
  _OilVolumeAnimationPageState createState() => _OilVolumeAnimationPageState();
}

class _OilVolumeAnimationPageState extends State<OilVolumeAnimationPage> {
  double height = 0.47;
  final double min = 0.47;
  final double max = 0.02;

  void _increaseHeight() {
    setState(() {
      height <= max ? max : height -= 0.003;
    });
  }

  void _decreaseHeight() {
    setState(() {
      height >= min ? min : height += 0.003;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Volume LEVEL (0-10000)',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 10),
              Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: SizedBox(
                          height:
                              (MediaQuery.of(context).size.height * 0.5) * 0.9,
                          width: 5,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50),
                                      topRight: Radius.circular(50),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.yellow,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(50),
                                      bottomRight: Radius.circular(50),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      StreamBuilder<double>(
                        stream: widget.atgController.dataStream,
                        builder: (BuildContext context,
                            AsyncSnapshot<double> snapshot) {
                          if (snapshot.hasData) {
                            double tankLevel = snapshot.data!;
                            // Use tankLevel to update the VolumeAnimationContainer
                            return VolumeAnimationContainer(
                              height:
                                  MediaQuery.of(context).size.height * height,
                              seconds: height <= (min / 2) ? 1000 : 1500,
                              colors: const [
                                Colors.blue,
                                Colors.blueAccent,
                                Color.fromARGB(255, 5, 39, 97),
                              ],
                            );
                          } else {
                            return CircularProgressIndicator();
                          }
                        },
                      ),
                    ],
                  ),
                  Positioned(
                    left: (MediaQuery.of(context).size.width / 2) + 88,
                    top: (MediaQuery.of(context).size.height - 20) * height,
                    child: GestureDetector(
                      onVerticalDragUpdate: (details) {
                        if (details.delta.dy > 0) {
                          _decreaseHeight();
                        } else {
                          _increaseHeight();
                        }
                      },
                      child: const VolumeSlideIcon(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
