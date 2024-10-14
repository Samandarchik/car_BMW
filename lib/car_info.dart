import 'package:flutter/material.dart';

class CarInfo extends StatelessWidget {
  const CarInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: MediaQuery.of(context).size.height * .6,
        child: Stack(
          children: [
            Image.asset(
              width: double.infinity,
              height: 900,
              'images/Car Image frame (3).png',
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(.5), // Transparent top part
                    Colors.black, // Transparent top part
                    Colors.black,
                    Colors.transparent, // Bottom part
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
                    Image.asset(
                      "images/logo.png",
                      width: 40,
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '"The ultimate driving machine."',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
