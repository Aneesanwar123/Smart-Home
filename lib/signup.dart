import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smart_intern/login.dart';
class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _loginState();
}

class _loginState extends State<signup> {

  final formkey = GlobalKey<FormState>();
  final userController = TextEditingController();
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  final confpassController = TextEditingController();

  void Createaccount() async {
    // Extracting user input from text controllers
    String user = userController.text.trim();
    String email = EmailController.text.trim();
    String password = PasswordController.text.trim();
    String cPassword = confpassController.text.trim();

    // Checking if any field is empty
    if (user == "" || email == "" || password == "" || cPassword == "") {
      // Logging an error message if any field is empty
      log("please Fill all the details");
    } else if (password != cPassword) {
      // Logging an error message if passwords do not match
      log("Password do not match!");
    } else {
      try {
        // Creating a new user with provided email and password
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        // Navigating to login page if user creation is successful
        if (userCredential.user != null) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
        }
        // Printing a success message
        print("User created");
      } on FirebaseException catch (e) {
        // Catching and printing Firebase exceptions
        print(e.code.toString());
      }
    }
  }

  @override

  void dispose(){
    userController.dispose();
    EmailController.dispose();
    PasswordController.dispose();
    confpassController.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff100273e),
      body: SingleChildScrollView(
        child: Center(
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
                    "Create An Account",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold
                      ),
                    )
                ),
                SizedBox(height: 50,),
                Container(
                  width: 320,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    color: Colors.white60.withOpacity(0.1),
                  ),
                  child: TextFormField(
                    controller: userController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: "Name",
                        prefixIcon: Icon(Icons.person,
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
                SizedBox(height: 30,),
                Container(
                  width: 320,
                  height: 55,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    color: Colors.white60.withOpacity(0.1),
                  ),
                  child: TextFormField(
                    controller: PasswordController,
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
                        )
                    ),
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
                    controller: confpassController,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        hintText: "Confirm Password",
                        prefixIcon: Icon(Icons.lock_open_outlined,
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
                  child: Row(
                    children: [
                      Text(
                        "Signup",
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                          )
                      ),
                      SizedBox(width: 190,),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.amber.withOpacity(0.5), // Shadow color
                              spreadRadius: 5, // Spread radius
                              blurRadius: 7, // Blur radius
                              offset: Offset(0, 3), //
                            )
                          ]
                        ),
                        child: IconButton(
                          onPressed: () {
                            // call the name of function when click the button it saves data in firebase database
                            Createaccount();
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>login()));
                          },
                          icon: Icon(Icons.arrow_forward,size: 35,),
                          color: Colors.black,
                        ),
                      )
                    ],
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
