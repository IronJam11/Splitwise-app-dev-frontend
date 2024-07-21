import 'package:flutter/material.dart';


class GroupsProfile extends StatelessWidget {
  const GroupsProfile({super.key, required this.icon1, required this.color});
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 60,
                width: 60,
                alignment: Alignment(0, 0),
                decoration:  BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                        color: color,
                        width: 2,
                      ), 
                ), 
                child: icon1,
              ),
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Dinner At Canto",
                style: TextStyle(
                  fontSize: 20.0
                ),),
                Text("Shobhit Bakliwal owes you"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Text("${rupeeSign} 500",
              style: TextStyle(
               fontSize: 20,
              ),),
            ),
          ],
        )
      ),
    );
  }
}