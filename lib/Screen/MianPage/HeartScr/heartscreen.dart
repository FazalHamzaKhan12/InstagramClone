import 'package:flutter/material.dart';
import 'package:instagram_clone/Screen/MianPage/HeartScr/TabForHeart/followingtab.dart';
import 'package:instagram_clone/Screen/MianPage/HeartScr/TabForHeart/youtab.dart';

class HeartPage extends StatelessWidget {
  const HeartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false, // This ensures no back button is added
          bottom: TabBar(
            indicatorColor: Colors.yellow,
            indicatorSize: TabBarIndicatorSize.tab,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.white,
            tabs: const [
              Tab(
                text: "Following",
              ),
              Tab(
                text: "You",
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
           Followingtab(),
            YouTab(),
          ],
        ),
      ),
    );
  }
}
