# Wave Animation Flutter Package

A Flutter package that provides a customizable wave animation widget with gradient support.

![Wave Animation Demo](demo.gif)

## Features

- **Wave Animation:** Smooth and visually appealing wave animation effect.
- **Customizable Gradient:** Users can define their own gradients to personalize the animation's appearance.
- **Easy Integration:** Simple to integrate into existing Flutter projects.

## Installation

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  my_wave_animation: ^0.0.1  # Replace with the latest version



# Wave Animation Flutter Package
```
A Flutter package that provides a customizable wave animation widget with gradient support.

![Wave Animation Demo](demo.gif)

## Usage

### Import the package:

```dart
import 'package:flutter/material.dart';
import 'package:my_wave_animation/wave_animation.dart';
Use the WaveAnimation widget in your Flutter app:
dart
Copy code
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wave Animation Demo'),
      ),
      body: Center(
        child: WaveAnimation(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.green, Colors.yellow, Colors.red],
            stops: [0.0, 0.3, 0.6, 1.0],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}
Customization
Gradient
You can customize the gradient by passing a Gradient object to the gradient parameter of WaveAnimation. If no gradient is provided, a default radial gradient will be used.

Example:

dart
Copy code
WaveAnimation(
  gradient: LinearGradient(
    colors: [Colors.purple, Colors.pink, Colors.deepPurple],
    stops: [0.0, 0.5, 1.0],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  ),
)
Demo
For more examples, check out the included example directory in the repository.

Contributing
Contributions are welcome! If you have any suggestions, enhancements, or bug fixes, please submit a pull request.