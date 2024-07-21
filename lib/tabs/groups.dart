import 'package:flutter/material.dart';
import 'package:splitwise_cheap_version/tabs/activity.dart';
import 'package:splitwise_cheap_version/utilities/groups-profile.dart';


class Groups extends StatelessWidget {
  const Groups({Key? key}) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Stack(
      
      children:[ ListView.builder(
        itemCount: 90,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(2.0),
            child: GroupsProfile(icon1: Icon(Icons.dining), color: Colors.black),
          );
        },
      ),
      const AddButton(),
      ]
    );
  }
}
