import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:musang_syncronizehub_odyssey/features/oil_volume_animation/volume_clipper.dart';

class VolumeAnimationContainer extends StatefulWidget {
  const VolumeAnimationContainer(
      {super.key,
      required this.colors,
      required this.height,
      this.seconds = 2000,
      this.width = 400});

  final List<Color> colors;
  final double height;
  final double width;
  final int seconds;

  @override
  State<VolumeAnimationContainer> createState() =>
      _WaveAnimationContainerState();
}

class _WaveAnimationContainerState extends State<VolumeAnimationContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final List<Offset> _points = [];

  final int waveSinWidth = 2;
  final int waveHeight = 4;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )
      ..forward()
      ..repeat();

    _controller.addListener(() {
      _points.clear();
      for (int i = 0; i <= widget.width; i++) {
        _points.add(
          Offset(
              i.toDouble(),
              math.sin(((_controller.value * 360 - i) % 360 * (math.pi / 180)) *
                          waveSinWidth) *
                      waveHeight +
                  widget.height),
        );
      }
    });
  }

  @override
  void didUpdateWidget(covariant VolumeAnimationContainer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.seconds != oldWidget.seconds) {
      _controller.duration = Duration(milliseconds: widget.seconds);
      if (_controller.isAnimating) {
        _controller
          ..forward()
          ..repeat();
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Colors.black38,
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          SizedBox(
            height: (MediaQuery.of(context).size.height * 0.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                100,
                (index) => ((index + 1) % 10 == 0)
                    ? Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            '${index + 1}',
                            overflow: TextOverflow.visible,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
              ).reversed.toList(),
            ),
          ),
          AnimatedBuilder(
            animation: _controller.drive(
              CurveTween(curve: Curves.easeInOut),
            ),
            builder: (context, child) {
              return ClipPath(
                clipper: VolumeClipper(
                  points: _points,
                ),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: widget.width,
                  decoration: BoxDecoration(
                    color: Colors.black38,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: widget.colors,
                      // stops: [0.0, 0.3, 0.6],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
