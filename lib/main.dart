import 'package:flutter/material.dart';
import 'package:my_portfolio/about_me.dart';
import 'package:my_portfolio/home.dart';
import 'package:my_portfolio/login.dart';
import 'package:my_portfolio/projects.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "login",
    routes: {
      "login": (context) => const Login(),
      "home": (context) => const Home(),
      "projects": (context) => const Projects(),
      "about": (context) => const AboutMe(),
    },
  ));
}
