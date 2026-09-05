import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CyberpunkTheme {
  static const Color bgDark = Color(0xFF07090E);
  static const Color cardDark = Color(0xFF0F1522);
  static const Color neonBlue = Color(0xFF00F0FF);
  static const Color neonRed = Color(0xFFFF0055);
  static const Color neonPurple = Color(0xFF9D00FF);
  static const Color textMuted = Color(0xFF94A3B8);

  static ThemeData get themeData {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: bgDark,
      primaryColor: neonBlue,
      colorScheme: const ColorScheme.dark(
        primary: neonBlue,
        secondary: neonRed,
        surface: cardDark,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.orbitron(
          fontSize: 26,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        titleLarge: GoogleFonts.orbitron(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: neonBlue,
        ),
        bodyLarge: GoogleFonts.rajdhani(
          fontSize: 16,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.rajdhani(
          fontSize: 14,
          color: textMuted,
        ),
      ),
    );
  }
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CyberPulse',
      debugShowCheckedModeBanner: false,
      theme: CyberpunkTheme.themeData,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CYBERPULSE'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'CyberPulse v1.0.0',
              style: GoogleFonts.orbitron(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CyberpunkTheme.neonBlue,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'All systems operational',
              style: GoogleFonts.rajdhani(
                fontSize: 16,
                color: CyberpunkTheme.neonBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
