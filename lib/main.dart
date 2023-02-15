import 'package:flutter/material.dart';
import 'package:freelance_project_ui/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
         textTheme: GoogleFonts.poppinsTextTheme()
    //     textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
    //   bodyText2: GoogleFonts.oswald(textStyle: textTheme.bodyText2),
    // ),
      ),
      home: const HomeScreen(),
    );
  }
}
