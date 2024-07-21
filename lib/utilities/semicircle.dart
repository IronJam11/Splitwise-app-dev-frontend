import 'package:flutter/material.dart';
import 'package:splitwise_cheap_version/login.dart';
import 'package:splitwise_cheap_version/register.dart';
import 'package:splitwise_cheap_version/utilities/facebook-button.dart';
import 'package:splitwise_cheap_version/utilities/google-button.dart';
Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class CustomShapeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      child: Stack(
        clipBehavior: Clip.none, 
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            bottom: 200, 
            child: Column(
              children: [
                Container(
                  width: 800,
                  height: 800,
                  decoration: BoxDecoration(
                    color: hexToColor("#4CBB9B"),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            top: -100,
            child: Text(
              "SPLITWISE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30.0,
              ),
            ),
          ),
          Positioned(
            top: -300,
            left: 0,
            right: 0,
            child: Container(
              child: Image.asset('assets/images/splitwiselogo.png'),
            ),
          ),
          Positioned(
            top: 100,
            child: MaterialButton(
              color: hexToColor("#666666"),
              minWidth: 250,
              height: 50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text(
                "LOGIN",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Positioned(
            top: 175,
            child: MaterialButton(
              color: hexToColor("#4CBB9B"),
              minWidth: 250,
              height: 50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
              child: const Text(
                "SIGN UP",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: -80,
            child: GoogleButton(a: () {}),
          ),
          Positioned(
            top: 350,
            left: 130,
            child: FacebookButton(a: () {}),
          ),
        ],
      ),
    );
  }
}


