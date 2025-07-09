import 'package:assignment/presentation/screens/bond_detail_screen.dart';
import 'package:assignment/presentation/screens/home.dart';
import 'package:flutter/material.dart';
import 'injection.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // ✅ const constructor

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TAP Invest',
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(),
        primarySwatch: Colors.deepPurple,
      ),
      home: const HomeScreen(), // Make this const if possible
    );
  }
}

