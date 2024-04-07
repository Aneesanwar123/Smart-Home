import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  var isHover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff100273e),
      appBar:null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    CircleAvatar(
                      backgroundImage:AssetImage("images/avatar.png"),
                    ),
                  Icon(Icons.menu,
                    color: Colors.amber,
                  ),
                ],
              ),
            ),
            SizedBox(height: 22,),
            Padding(
              padding: const EdgeInsets.only(
                left: 28
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                  child: Text(
                      "Hello, Jennie",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                      )
                    ),
                  ),
              ),
            ),
            SizedBox(height: 3,),
            Padding(
              padding: const EdgeInsets.only(
                left: 28
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Good To See You Again!",
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.white54,
                        fontWeight: FontWeight.w700
                      )
                  ),
                ),
              ),
            ),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      height:70,
                      width:70,
                      decoration: BoxDecoration(
                        color:Colors.white10,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(
                        Icons.bed_outlined,
                        color: Colors.white24,
                        size: 35,
                      ),
                    ),
                  SizedBox(width: 20,),
                  Container(
                    height:70,
                    width:70,
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(
                      Icons.dinner_dining,
                      color:Colors.white24,
                      size: 35,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height:70,
                    width:70,
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(
                      Icons.chair,
                      color:Colors.white24,
                      size: 35,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height:70,
                    width:70,
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Icon(
                      Icons.kitchen,
                      color:Colors.white24,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 27
                ),
                child: Row(
                  children: [
                    Container(
                      height: 230,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: NetworkImage("https://i.pinimg.com/564x/37/69/82/376982859d947a079f98c241a0d0d4a3.jpg"),
                          fit: BoxFit.cover
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 190,
                          left: 15
                        ),
                        child: Text(
                          "Living Room",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19
                              )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16,),
                    Container(
                      height: 230,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage("https://i.pinimg.com/564x/87/6b/5a/876b5a56937e63acd54e25b435157da1.jpg"),
                              fit: BoxFit.cover
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 190,
                            left: 15
                        ),
                        child: Text(
                          "Guest Room",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19
                              )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16,),
                    Container(
                      height: 230,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage("https://i.pinimg.com/736x/62/14/a7/6214a7a73b01b308f42e2f29f8b32fe0.jpg"),
                              fit: BoxFit.cover
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 190,
                            left: 15
                        ),
                        child: Text(
                          "Bed Room",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19
                              )
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16,),
                    Container(
                      height: 230,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: NetworkImage("https://i.pinimg.com/564x/89/32/2e/89322e84c729fb625aac49a2144e665c.jpg"),
                              fit: BoxFit.cover
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 190,
                            left: 15
                        ),
                        child: Text(
                          "kitchen",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 19
                              )
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
            Padding(
              padding: const EdgeInsets.only(
                  left: 29
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Devices",
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      )
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0
                    ),
                    child: Container(
                      height: 100,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Icon(Icons.light_mode_sharp,color: Colors.white,),
                                    SizedBox(width: 90,),
                                    Icon(Icons.circle,size: 17,color: Colors.blue[900],)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 18,),
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 78
                            ),
                            child: Text(
                                "Light",
                              style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 100,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Icon(Icons.mode_fan_off_rounded,color: Colors.white,),
                                  SizedBox(width: 90,),
                                  Icon(Icons.circle,size: 17,color: Colors.green,)
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 18,),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 91
                          ),
                          child: Text(
                            "Fan",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0
                    ),
                    child: Container(
                      height: 100,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Icon(Icons.music_note_rounded,color: Colors.white,),
                                    SizedBox(width: 90,),
                                    Icon(Icons.circle,size: 17,color: Colors.green,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 18,),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 62
                            ),
                            child: Text(
                              "Music",
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    height: 100,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Icon(Icons.wifi,color: Colors.white,),
                                  SizedBox(width: 90,),
                                  Icon(Icons.circle,size: 17,color: Colors.blue[900],)
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 18,),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 60
                          ),
                          child: Text(
                            "Router",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    // fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                )
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
