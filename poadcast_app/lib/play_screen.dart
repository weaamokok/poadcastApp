import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siri_wave/siri_wave.dart';

class PlayScreen extends StatelessWidget {
  final int index;
  final String name;
  const PlayScreen(this.index, this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff282828),
        body: Container(
          margin: EdgeInsets.only(top: 50, left: 10, right: 10),
          child: SingleChildScrollView(
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'NOW PLAYING',
                    style: GoogleFonts.anton(
                        height: .5, fontSize: 50, color: Colors.white),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.bookmarks_outlined,
                        size: 30,
                        color: Colors.white,
                        grade: 2,
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 350,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'images/${index + 1}.jpg',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.withOpacity(.2)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                name,
                style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              Stack(children: [
                SiriWave(
                  style: SiriWaveStyle.ios_7,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '00:00',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          '40:00',
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 15),
                        )
                      ]),
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {}, icon: Image.asset('images/icon8.png',width: 35,)),
                Transform( alignment: Alignment.center,
            transform: Matrix4.rotationY(3.14),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'images/icon6.png',
                        )),
                  )
               ,IconButton(
                        onPressed: () {},iconSize: 50,
                        icon:Icon(Icons.pause_circle,size: 90,color: Color(0xff94D82D),)
                        //  Image.asset(
                        //   'images/icon7.png',width: 50,height: 50,fit: BoxFit.fitWidth,
                        // )
                        ),IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'images/icon6.png',
                        )),IconButton(
                      onPressed: () {}, icon: Image.asset('images/icon5.png')), ],
              )
            ]),
          ),
        ),  bottomNavigationBar: ConvexAppBar(
          activeColor: Color.fromARGB(255, 158, 62, 247),
          backgroundColor: Color(0xff282828),
          items: [TabItem(icon: Image.asset('images/icon1.png')),TabItem(icon: Image.asset('images/icon3.png')),TabItem(icon: Image.asset('images/icon2.png')),TabItem(icon: Image.asset('images/icon4.png'))]),);
  }
}
