import 'package:flutter/material.dart';
import 'package:splitwise_cheap_version/boot.dart';

class SemiCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400, 
      child: Stack(
        clipBehavior: Clip.none, 
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: -450, 
            child: Container(
              width: 800,
              height: 800,
              decoration: BoxDecoration(
                color: hexToColor("#4CBB9B"),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
