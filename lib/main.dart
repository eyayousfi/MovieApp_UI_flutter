import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app_ui/screens/home_page.dart';
import 'package:movie_app_ui/screens/movie_details.dart';

import 'screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movie App',
      debugShowCheckedModeBanner: false ,
      theme: ThemeData(

        fontFamily: GoogleFonts.openSans().fontFamily

      ),
      home: const OnBoardingScreen() );
        //home: const movieDetailScreen() );
  }
}
