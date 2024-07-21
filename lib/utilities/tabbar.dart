import 'package:flutter/material.dart';
import 'package:splitwise_cheap_version/tabs/activity.dart';
import 'package:splitwise_cheap_version/tabs/friends.dart';
import 'package:splitwise_cheap_version/tabs/groups.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
            ), 
            ),
            child: TabBar(
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              tabs: const [
                Tab(
                  text: "FRIENDS",
                ),
                Tab(
                  text: "GROUPS",
                ),
                Tab(
                  text: "ACTIVITY",
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Container(
                  color: Colors.white,
                  child: const Friends(),
                ),
                Container(
                  color: Colors.white,
                  child: const Center(
                    child: const Groups(),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: const Activity(),
                  
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
