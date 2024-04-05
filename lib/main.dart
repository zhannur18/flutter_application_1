import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'package:flutter_villains/villains/villains.dart'; // Import the package

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WavePage(),
    );
  }
}

class WavePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WaveS'),
      ),
      body: Stack(
        children: [
          WaveWidget(
            config: CustomConfig(
              gradients: [
                [Colors.greenAccent, Colors.green.shade300],
                [Colors.blue.shade500, Colors.blue.shade200],
              ],
              durations: [35000, 19440],
              heightPercentages: [0.16, 0.22],
              gradientBegin: Alignment.bottomLeft,
              gradientEnd: Alignment.topRight,
            ),
            waveAmplitude: 0,
            size: Size(
              double.infinity,
              double.infinity,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Keep calm and relax',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to the second screen with a transition effect
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SecondScreen()));
                  },
                  child: Text('sample button'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Villain(
      villainAnimation: VillainAnimation.fade(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Second Screen'),
        ),
        body: Center(
          child: Text(
            'Welcome to the second screen!',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
