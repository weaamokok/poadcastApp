import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(milliseconds: 1000), () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),)); });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282828),
      body: Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Colors.lightGreen,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'COMMUNITY',
                      style:
                          GoogleFonts.poppins(color: Colors.grey, fontSize: 18),
                    )
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Color.fromARGB(255, 244, 117, 238),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'SOLIDARITY',
                      style:
                          GoogleFonts.poppins(color: Colors.grey, fontSize: 18),
                    )
                  ],
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 5,
                      backgroundColor: Color.fromARGB(255, 158, 62, 247),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'INSPIRATION',
                      style:
                          GoogleFonts.poppins(color: Colors.grey, fontSize: 18),
                    )
                  ],
                )
              ],
            ),SizedBox(height: 60,),
            Text(
              'WOMEN',
              style: GoogleFonts.anton(height: .5,
                  fontSize: 100, color: Color.fromARGB(255, 244, 117, 238)),
            ), Text(
              'POWER',
              style: GoogleFonts.anton(
                  fontSize: 100, color: Color.fromARGB(255, 244, 117, 238)),
            ), Text(
              'POADCAST',
              style: GoogleFonts.anton(height: .5,
                  fontSize: 100, color: Colors.white),
            ), Text(
              'APP',
              style: GoogleFonts.anton(
                  fontSize: 100, color: Colors.white),

            ),
Expanded(child: Image.asset('images/0.png',fit: BoxFit.fitHeight,))          ],
        ),
      ),
    );
  }
}
