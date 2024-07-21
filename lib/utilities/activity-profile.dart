import 'package:flutter/material.dart';
import 'package:splitwise_cheap_version/boot.dart';


class ActivityProfile extends StatelessWidget {
  const ActivityProfile({super.key, required this.icon1, required this.color});
  final String rupeeSign = '\u20B9';
  final Icon icon1;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration:  BoxDecoration
        (
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.00),
          border: Border.all(
            color: Colors.black,
            width: 0.5,
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 60,
                width: 60,
                alignment: const Alignment(0, 0),
                decoration:  BoxDecoration(
                  color: hexToColor("#ECECEC"),
                  shape: BoxShape.circle,
                  border: Border.all(
                        color: color, 
                        width: 2, 
                      ), 
                ), 
                child: icon1,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shohit B. added ',
                  style: TextStyle(
                    fontSize: 20.0
                  ),),
                  Text('to the group "Movie Night"'),
                ],
              ),
            ),
            
          ],
        )
      ),
    );
  }
}