import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iOS issue with xcode build-for-testing demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'iOS issue demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Emit a sound'),
          onPressed: () {
            debugPrint('Button pressed');
            final audioPlayer = AudioPlayer()..setReleaseMode(ReleaseMode.stop);
            audioPlayer.play(AssetSource('beep-01a.wav'));
          },
        ),
      ),
    );
  }
}
