import 'dart:async'; // Import dart:async for Timer
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_intern/login.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    // Start a timer to navigate to the login screen after 3 seconds (adjust as needed)
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.pinimg.com/564x/e8/58/43/e85843b80f86ddb5096dcd16df28aeac.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
