import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_intern/forgot.dart';
import 'package:smart_intern/home.dart';
import 'package:smart_intern/signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  final formkey = GlobalKey<FormState>();
  final EmailController = TextEditingController();
  final passController = TextEditingController();
  final auth = FirebaseAuth.instance;
  // Create a Fucntion or login authentication
  void login(){
    auth.signInWithEmailAndPassword(
      email: EmailController.text,
      password: passController.text.toString(),
    ).then((userCredential) {
      // Authentication successful, navigate to the next page
      Navigator.push(context, MaterialPageRoute(builder: (context) => home()));
    }).catchError((error) {
      // Authentication failed, display an error message
      print("Login failed: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff100273e),
      body: Center(
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50,),
               Center(
                 child: Container(
                   height: 200,
                     width: 300,
                     child: Image(
                       image: AssetImage("images/logog.png"),
                       fit: BoxFit.cover,)),
               ),
                SizedBox(height: 15,),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          "WELCOME",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Colors.amber,
                              fontSize: 23,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ),
                      SizedBox(width: 8,),
                      Text(
                          "BACK",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                                fontWeight: FontWeight.bold
                            ),
                          )
                      )
                    ],
                  ),
                ),
                Text(
                    "Continue Sign in",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                      color: Colors.white24,
                      fontSize: 20
                    )
                  ),
                ),
                SizedBox(height: 35,),
                Container(
                  width: 320,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white60.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextFormField(
                    controller: EmailController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.alternate_email_outlined,
                        color: Colors.white60,
                      ),
                      hintStyle: TextStyle(
                        color: Colors.white60
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.white60)
                      )
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "PLease Enter Email";
                      }
                      else{
                        return null;
                      }
                    },
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: 320,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    color: Colors.white60.withOpacity(0.1),
                  ),
                  child: TextFormField(
                    controller:passController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock_open_outlined,
                          color: Colors.white60,
                        ),
                        hintStyle: TextStyle(
                            color: Colors.white60
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white)
                        ),
                    ),
                    validator: (value){
                      if(value!.isEmpty){
                        return "PLease Enter Password";
                      }
                      else{
                        return null;
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 185
                  ),
                  child: TextButton(onPressed:
                      () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>forgot()));
                      },
                      child: Text(
                        "forgot Password?",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Colors.amber,
                              fontWeight: FontWeight.bold,
                              // fontSize: 15
                          ),
                        ),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text(
                          "Login",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          )
                      ),
                        SizedBox(width: 200,),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle, // Shape the container as a circle
                            boxShadow: [
                              BoxShadow(
                                color: Colors.amber.withOpacity(0.5), // Shadow color
                                spreadRadius: 5, // Spread radius
                                blurRadius: 7, // Blur radius
                                offset: Offset(0, 3), // Shadow position
                              ),
                            ],
                          ),
                          child: IconButton(
                            onPressed: () {
                              if(formkey.currentState!.validate()){
                                login();
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=>home()));
                              }
                            },
                            icon: Icon(Icons.arrow_forward,size: 35,),
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 100
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "dont have an account?",
                            style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                fontSize: 15
                              ),
                            )
                        ),
                        TextButton(onPressed:
                            () {
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>signup()));
                            },
                            child: Text(
                                "Sign up",
                                style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
