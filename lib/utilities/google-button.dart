import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key, required this.a});
  final Function a;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        height: 50,
        minWidth: 150,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
          side: const BorderSide(color: Colors.grey, 
          width: 2.0),
        ),
        onPressed: a(),
        child: Image.asset('assets/images/google.jpg',
        height: 38,
        width: 38,
        ),
      ),
    );
  }
}