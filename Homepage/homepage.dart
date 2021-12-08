import 'package:flutter/material.dart';
import 'package:flutter_practice/UI1/Constants/constants.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SplashColor color = SplashColor();
    return Scaffold(
      backgroundColor: color.homeBackground,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80.0, left: 120),
                child: Text(
                  'Get Coaching',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18),
                child: Container(
                  height: size.height / 4,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: color.shadowColor,
                        blurRadius: 3,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40.0, left: 50),
                            child: Text(
                              'You Have',
                              style: GoogleFonts.raleway(
                                color: color.shadowColor,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 60.0),
                            child: Text(
                              206.toString(),
                              style: GoogleFonts.raleway(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 65,
                          ),
                          // ignore: deprecated_member_use
                          SizedBox(
                            height: 50,
                            width: 100, // ignore: deprecated_member_use
                            // ignore: deprecated_member_use
                            child: RaisedButton(
                              color: Colors.greenAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              onPressed: () {},
                              child: Text('Buy More'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 340, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Text(
                        'my coaches'.toUpperCase(),
                        style: GoogleFonts.lato(
                          color: color.shadowColor,
                        ),
                      ),
                    ),
                    Text(
                      'View Past Sessions'.toUpperCase(),
                      style: GoogleFonts.raleway(
                        color: Colors.lightGreen,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildContainer(
                      height: size.height / 5.5,
                      width: size.width / 3,
                      shadowColor: color.shadowColor,
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    buildContainer(
                      height: size.height / 5.5,
                      width: size.width / 3,
                      shadowColor: color.shadowColor,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildContainer({double height, width, Color shadowColor}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 2,
          ),
        ]),
  );
}
