import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarInfo extends StatelessWidget {
  const CarInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height * .6,
        child: Stack(
          children: [
            Image.asset(
              width: MediaQuery.of(context).size.width,
              height: 900,
              'images/Car Image frame (3).png',
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black, // Transparent top part

                    Colors.black, // Bottom part
                    Colors.transparent, // Bottom part
                    Colors.transparent.withOpacity(.3), // Bottom part
                    Colors.black.withOpacity(.9), // Transparent top part
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Positioned(
              top: 60,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      children: [
                        Image.asset(
                          "images/logo.png",
                          width: 30,
                        ),
                        Text(
                          " BMW",
                          style: TextStyle(
                              letterSpacing: 3,
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Image.asset("images/Menu.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '"The ultimate driving machine."',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                right: 0,
                left: 0,
                bottom: 20,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.chevron_left,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "BMW",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: "BhuTuka",
                            color: Colors.white,
                            fontSize: 63,
                            letterSpacing: 2,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            CupertinoIcons.chevron_right,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "BMW M SPORT - WHITE",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
