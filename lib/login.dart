import 'package:flutter/material.dart';
import 'package:splitwise_cheap_version/register.dart';
import 'package:splitwise_cheap_version/utilities/facebook-button.dart';
import 'package:splitwise_cheap_version/utilities/google-button.dart';
import 'package:splitwise_cheap_version/utilities/semi-circle-2.dart';


Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: SemiCircle(),
          ),
          const Positioned(
            top: 260, 
            child: EntryWidget(),
          ),
          const Positioned(
            top: 700, 
            child: AdditionalContainer(),
          ),
          const Positioned(
            top: 75,
            child: Header(),
          ),
          const Positioned(
            top: 170,
            child: Header2(),
          ),
        ],
      ),
    );
  }
}

class EntryWidget extends StatelessWidget {
  const EntryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 340,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Text(
              "Password",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(17, 20, 20, 5),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "aaryanjain88@gmail.com",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Text(
              "Email Address",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(17, 20, 20, 5),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "**********",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(180, 28, 0, 0),
            child: Text(
              "Forgot your password?",
              style: TextStyle(
                color: hexToColor("#616161"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AdditionalContainer extends StatelessWidget {
  const AdditionalContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GoogleButton(a: () {}),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: FacebookButton(a: () {}),
        ),
      ],
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            'assets/images/splitwiselogo.png',
            height: 40,
            width: 40,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: Center(
            child: Text(
              "SPLITWISE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Header2 extends StatelessWidget {
  const Header2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 80, 0),
          child: Text(
            "LOGIN",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegisterPage()),
              );
            },
            child: const Text(
              "REGISTER",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
