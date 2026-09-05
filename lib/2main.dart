import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CyberPulse',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF07090E),
        primaryColor: const Color(0xFF00F0FF),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CYBERPULSE')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CyberPulse v1.0.0',
              style: GoogleFonts.orbitron(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF00F0FF),
              ),
            ),
            const SizedBox(height: 20),
            const Text('All systems operational'),
          ],
        ),
      ),
    );
  }
}
