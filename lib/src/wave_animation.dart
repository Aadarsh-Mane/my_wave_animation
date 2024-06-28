import 'package:flutter/material.dart';

class WaveAnimation extends StatelessWidget {
  final Gradient gradient;

  // Constructor with a default gradient
  WaveAnimation({
    Gradient? gradient, // Make the gradient nullable
  }) : gradient =
            gradient ?? _defaultGradient(); // Use default gradient if null

  // Default gradient method
  static Gradient _defaultGradient() {
    return RadialGradient(
      colors: [
        Colors.white,
        Colors.white,
        Colors.transparent,
        Colors.transparent
      ],
      stops: [0.0, 0.55, 0.6, 1.0],
      center: FractionalOffset(0.95, 0.90),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            child: TweenAnimationBuilder(
              tween: Tween(begin: 0.0, end: 1.0),
              duration: Duration(milliseconds: 1500),
              builder: (context, value, child) {
                return ShaderMask(
                  shaderCallback: (bounds) {
                    return gradient.createShader(bounds);
                  },
                  child: child,
                );
              },
              child: Center(child: Text("Wave Animation")),
            ),
          );
        },
      ),
    );
  }
}
