# RotatedAnimatedSwitcher

A custom Animated Cupertino-style switcher widget with animated transitions and optional rotation.

## Features

- Customizable width, height, active color, and disabled color
- Animated transitions
- Optional rotation of the check mark

## Installation

Add this to your package's `pubspec.yaml` file:
```
dependencies:
  rotated_animated_switcher: ^0.0.2
```


## Usage
```
import 'package:rotated_animated_switcher/rotated_animated_switcher.dart';

```

## Example
```
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _switcherValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomCupertinoSwitcher Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RotatedAnimatedSwitcher(
              initialValue: _switcherValue,
              width: 60.0,
              height: 30.0,
              activeColor: Colors.green,
              disabledColor: Colors.red,
              duration: const Duration(milliseconds: 300),
              shouldRotate: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _switcherValue = !_switcherValue;
                });
              },
              child: const Text('Toggle Switcher'),
            ),
          ],
        ),
      ),
    );
  }
}

```

### Parameters

Here are the parameters you can configure when using the `RotatedAnimatedSwitcher` widget:

| Parameter      | Description                                                                                       | Default Value                         |
|----------------|---------------------------------------------------------------------------------------------------|---------------------------------------|
| `initialValue` | The initial state of the switcher. `true` for active, `false` for inactive.                      | `false`                               |
| `width`        | The width of the switcher widget.                                                                  | `35.0`                                |
| `height`       | The height of the switcher widget.                                                                 | `24.0`                                |
| `activeColor`  | The color of the switcher when it is in the active (on) state.                                    | Theme's primary color                 |
| `disabledColor`| The color of the switcher when it is in the disabled (off) state.                                 | Theme's disabled color                |
| `duration`     | The duration of the animation when the switcher state changes.                                     | `const Duration(milliseconds: 500)`   |
| `shouldRotate` | If `true`, the check mark inside the switcher will rotate based on the switcher state changes.    | `false`                               |