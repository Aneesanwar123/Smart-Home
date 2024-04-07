import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_intern/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
class forgot extends StatefulWidget {
  const forgot({super.key});

  @override
  State<forgot> createState() => _forgotState();
}

class _forgotState extends State<forgot> {

  final formkey = GlobalKey<FormState>();
  final EmailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff100273e),
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(height: 40,),
              Center(
                child: Container(
                    height: 200,
                    width: 300,
                    child: Image(
                      image: AssetImage("images/logog.png"),
                      fit: BoxFit.cover,)),
              ),
              Text(
                "Reset password",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold
                    ),
                  )
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
                          borderSide: BorderSide(color: Colors.white)
                      )
                  ),
                ),
              ),
              SizedBox(height: 35,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Center(
                  child: Row(
                    children: [
                      Text(
                        "Send Code",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          )
                      ),
                      SizedBox(width: 155,),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.amber.withOpacity(0.5), // Shadow color
                                spreadRadius: 5, // Spread radius
                                blurRadius: 7, // Blur radius
                                offset: Offset(0, 3),
                              )
                            ]
                        ),
                        child: IconButton(onPressed: () {
                          FirebaseAuth.instance.sendPasswordResetEmail(
                              email: EmailController.text
                          );
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                        } ,
                            icon: Icon(Icons.arrow_forward,size: 35,),
                        color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
