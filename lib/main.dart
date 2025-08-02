import 'package:flutter/material.dart';
import 'package:intern_dashboard/login/Sign-Up%20Page.dart';

import 'screens/dashboard_page.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Intern Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
