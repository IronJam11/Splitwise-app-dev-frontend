import 'package:flutter/material.dart';



class UserProfile extends StatelessWidget {
  const UserProfile({super.key, required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: const Alignment(0,0),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        border: Border.all(
          color: color,
          width: 10,
        )
      ),
      child: Text("M",
      style: TextStyle(
        fontSize: 50,
        color: color,
      ),
      ),


    );
  }
}