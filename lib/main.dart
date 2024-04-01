import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:serrano/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(fontFamily: GoogleFonts.poppins().fontFamily),
    );
  }
}
