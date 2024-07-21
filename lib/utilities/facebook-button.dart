import 'package:flutter/material.dart';
import 'package:splitwise_cheap_version/boot.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({super.key, required this.a});
  final VoidCallback a;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: hexToColor("#157DC3"),
      height: 50,
      minWidth: 150,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: BorderSide(color: hexToColor("#157DC3"), width: 2.0),
      ),
      onPressed: a,
      child: Expanded(
        child: Image.asset(
          'assets/images/facebook.jpg',
          height: 38,
          width: 38,
        ),
      ),
    );
  }
}
