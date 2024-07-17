import 'package:flutter/material.dart';
import 'package:rotated_animated_switcher/rotated_animated_switcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CustomCupertinoSwitcher Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

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
