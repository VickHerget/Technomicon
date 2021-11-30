import 'package:flutter/material.dart';
import 'package:technomicon/screens/home.dart';
import 'package:technomicon/screens/login.dart';
import 'package:technomicon/screens/results.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Technomicon",
      initialRoute: '/',
      routes: defineRoutes()));
}
