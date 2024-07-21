import 'package:flutter/material.dart';
import 'package:splitwise_cheap_version/boot.dart';
import 'package:splitwise_cheap_version/utilities/activity-profile.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
            itemCount: 90,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.all(2.0),
                child: ActivityProfile(icon1: Icon(Icons.movie_creation), color: Colors.black),
              );
            },
          ),
          const AddButton(),
        ],
      ),
    );
  }
}


class AddButton extends StatelessWidget {
  const AddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
            bottom: 16.0,
            right: 16.0,
            child: GestureDetector(
              onTap: () {
                // Add your onPressed code here!
              },
              child: Container(
                width: 65.0,
                height: 65.0,
                decoration: BoxDecoration(
                  color: hexToColor("#4CBB9B"),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
          );
  }
}