import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:splitwise_cheap_version/boot.dart';
import 'package:splitwise_cheap_version/utilities/analytics-container.dart';
import 'package:splitwise_cheap_version/utilities/circle-design.dart';
import 'package:splitwise_cheap_version/utilities/tabbar.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: hexToColor("#4CBB9B"),
      appBar: AppBar(
        backgroundColor: hexToColor("#4CBB9B"),
        title: const Center(child: Text("SPLITWISE",
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        ),
        leading: IconButton(
          onPressed: (){}, 
          icon: const Icon(Icons.menu),
          color: Colors.white,),
        actions: [
          IconButton(
            onPressed: (){},
             icon: const Icon(Icons.search,
             color: Colors.white,),
             ),
             IconButton(
              onPressed: (){},
              icon: const Icon(Icons.list_rounded,
              color: Colors.white,),
             ),
        ],
      ),
      body: const Column(
        children: [
          UserProfile(color: Colors.green,),
          SizedBox(height: 10),
          Text("Meha Bakilal",
          style: TextStyle(
            color: Colors.white,
          ),),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: AnalyticsContainer(),
          ),
          Expanded(
            child: Tabbar(),
          ),
        ],
      ),
    );
  }
}
