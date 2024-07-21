import 'package:flutter/material.dart';
import 'package:splitwise_cheap_version/login-signup-page.dart';

Color hexToColor(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor; 
  }
  return Color(int.parse(hexColor, radix: 16));
}

class Boot extends StatefulWidget {
  const Boot({super.key});

  @override
  _BootState createState() => _BootState();
}

class _BootState extends State<Boot> {
  @override
  void initState() {
    super.initState();
    _navigateToRegisterLoginPage();
  }

  void _navigateToRegisterLoginPage() async {
    await Future.delayed(Duration(seconds:3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => LoginSignUp()), 
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/images/splitwiselogo.png',
                height: 200,
                width: 400,
              ),
            ),
            Text(
              "SPLITWISE",
              style: TextStyle(
                color: hexToColor("#64C9AC"),
                fontSize: 30.0,
              ),
            ),
            SizedBox(height: 400),
            Container(
              child: Text(
                "Split bills the easy way",
                style: TextStyle(
                  color: hexToColor("#666666"),
                  fontSize: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
