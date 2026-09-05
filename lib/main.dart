import 'package:flutter/material.dart';
void main() => runApp(const App());
class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CyberPulse',
      theme: ThemeData.dark(),
      home: const Home(),
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CyberPulse')),
      body: const Center(child: Text('v1.0.0')),
    );
  }
}
