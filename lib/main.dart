import 'package:car_bmw/car_info.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .5,
              child: Stack(
                children: [
                  Image.asset(
                    width: double.infinity,
                    'images/Image.jpeg',
                    fit: BoxFit.fitWidth,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black, // Transparent top part
                          Colors.black.withOpacity(.7), // Transparent top part
                          Colors.black.withOpacity(.5), // Transparent top part
                          Colors.transparent, // Transparent top part
                          Colors.transparent, // Bottom part
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                  Positioned(
                      right: 0,
                      left: 0,
                      bottom: 20,
                      child: Column(
                        children: [
                          Image.asset(
                            "images/logo.png",
                            width: 70,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            '   "The ultimate\n driving machine."',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => CarInfo()));
              },
              child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                height: 48,
                width: MediaQuery.of(context).size.width * .66,
                decoration: BoxDecoration(
                    color: Color(0xFF0C446B),
                    borderRadius: BorderRadius.circular(40)),
                child: const Center(
                  child: Text(
                    "Log in for free",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
            ),
            const ConteinerPress(
              text: "Google",
            ),
            const ConteinerPress(
              text: "Fecebook",
            ),
            const ConteinerPress(
              text: "Apple",
            ),
            const SizedBox(
              height: 20,
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?   ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300),
                  ),
                  Container(
                    child: Text(
                      "JOIN IN",
                      style: TextStyle(
                          decorationThickness: 1.8,
                          decorationColor: Colors.white,
                          decoration: TextDecoration.underline,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class ConteinerPress extends StatelessWidget {
  final String text;

  const ConteinerPress({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 48,
      width: MediaQuery.of(context).size.width * .66,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          color: Colors.black,
          borderRadius: BorderRadius.circular(40)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset("images/$text.png"),
          ),
          Text(
            "Continue with $text",
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox()
        ],
      ),
    );
  }
}
// Row(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 12.0,right: 200),
//             child: Image.asset("images/Google.png"),
//           ),
//           Text(
//             "Log in for free",
//             style: TextStyle(
//                 color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
//           ),
//         ],
//       ),