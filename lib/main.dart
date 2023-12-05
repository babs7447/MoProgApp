import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page/landing_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(  MyApp());
} 


class MyApp extends StatelessWidget {
  static  String title = 'my app';

   MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.red),
        home: LandingPage(context),
      );
}

