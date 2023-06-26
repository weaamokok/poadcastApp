import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poadcast_app/play_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff282828),
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 10, right: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'POADCASTS',
                  style: GoogleFonts.anton(
                      height: .5, fontSize: 50, color: Colors.white),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.grain_sharp,
                      size: 50,
                      color: Colors.white,
                    ))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
                height: 50,
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: 'SEARCH',
                      hintStyle: GoogleFonts.poppins(
                          color: Colors.white.withOpacity(.5), fontSize: 16),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 35,
                        color: Colors.white.withOpacity(.5),
                      ),
                      fillColor: const Color.fromRGBO(158, 158, 158, 1)
                          .withOpacity(.2),
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                )),
            Expanded(
              child: MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                itemCount: 6,
                crossAxisSpacing: 8,
                itemBuilder: (context, index) {
                  return InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => PlayScreen(index,'LISTEN TO YOUR HEART')));
                  },
                    child: Container(
                      height: (index % 2 == 0 ? 200 : 350),
                      width: (index % 2 == 0 ? 300 : 250),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                'images/${index + 1}.jpg',
                              ),
                              fit: BoxFit.cover),
                          color: Colors.grey.withOpacity(.2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: double.infinity,
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 69, 69, 69),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            height: (index % 2 == 0 ? 250 : 350) / 3,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    'POADCASTS',
                                    style: GoogleFonts.anton(
                                        height: .5,
                                        fontSize: 17,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.favorite_border_rounded,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        '${index + 5 * 5}k',
                                        style: GoogleFonts.poppins(
                                            height: .5,
                                            fontSize: 15,
                                            color: Colors.white),
                                      ),
                                    ],
                                  )
                                ]),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
          activeColor: Color.fromARGB(255, 158, 62, 247),
          backgroundColor: Color(0xff282828),
          items: [TabItem(icon: Image.asset('images/icon1.png')),TabItem(icon: Image.asset('images/icon3.png')),TabItem(icon: Image.asset('images/icon2.png')),TabItem(icon: Image.asset('images/icon4.png'))]),
    );
  }
}
