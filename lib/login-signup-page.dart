import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splitwise_cheap_version/utilities/semicircle.dart';


class LoginSignUp extends StatelessWidget {
  const LoginSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body:
      Center(
        child: CustomShapeWidget(),
      )
    );
  }
}