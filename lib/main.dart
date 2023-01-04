import 'package:flutter/material.dart';
import 'package:flutter_travel_app_ui/pages/welcome_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme),
      ),
      home: const WelcomePage(),
    );
  }
}
