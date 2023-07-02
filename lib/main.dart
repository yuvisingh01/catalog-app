import 'package:catalog_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Home(), we have to remove this line because we cant have two pages initially. as we are routing it using '/' which  is a by default screen where we are rendering home page'
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        // primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      darkTheme: ThemeData(
        brightness : Brightness.dark,
      ),
      // initialRoute: '/home',
      routes: {
        '/':(context) => const LoginPage(),
        MyRoutes.homeRoute: (context)=> const Home(),
        MyRoutes.loginRoute: (context)=> const LoginPage(),
      },

    );
  }
}
