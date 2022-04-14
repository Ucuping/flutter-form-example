import 'package:flutter/material.dart';
import 'package:helloworld/routes/route.dart';
// import 'package:';

void main() {
  runApp(MaterialApp(
    title: "MyApp",
    onGenerateRoute: RouteGenerator.generateRoute,
    debugShowCheckedModeBanner: false,
  ));
}
