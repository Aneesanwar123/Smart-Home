import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:smart_intern/login.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 630),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Let's Decide Today",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 3),
              ],
            ),
            Container(
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle, // Shape the container as a circle
                boxShadow: [
                  BoxShadow(
                    color: Colors.amber.withOpacity(0.5), // Shadow color
                    spreadRadius: 7, // Spread radius
                    blurRadius: 4, // Blur radius
                    offset: Offset(0, 3), // Shadow position
                  ),
                ],
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                },
                icon: Icon(Icons.arrow_forward, size: 45),
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
