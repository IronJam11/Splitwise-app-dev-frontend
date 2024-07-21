import 'package:flutter/material.dart';
import 'package:splitwise_cheap_version/boot.dart';


class AnalyticsContainer extends StatelessWidget {
  const AnalyticsContainer({super.key});
  final String rupeeSign = '\u20B9';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
         color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("You are owed",
                style: TextStyle(
                  fontSize: 15,
                ),),
                RichieText(money: 1500),
              ],
            ),
          ),
          Container(
            height: 70, 
            child: const VerticalDivider(
              color: Colors.black, 
              thickness: 1, 
              width: 20, 
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("You owe"),
                RichieText(money: 750),
              ],
            ),
          ),
          Container(
            height: 70, 
            child: const VerticalDivider(
              color: Colors.black, 
              thickness: 1, 
              width: 20, 
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Total Balance"),
                RichieText(money: 750,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class RichieText extends StatelessWidget {
  const RichieText({super.key, required this.money});
  final int money;

  @override
  Widget build(BuildContext context) {
    return RichText(
  text: TextSpan(
    children: [
      const TextSpan(
        text: '\u20B9', 
        style: TextStyle(
          fontSize: 20.0, 
          color: Colors.black, 
        ),
      ),
      TextSpan(
        text: '$money', 
        style: TextStyle(
          fontSize: 32.0, 
          color: hexToColor("#616161"), 
        ),
      ),
    ],
  ),
);
  }
}