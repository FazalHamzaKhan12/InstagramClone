import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/ui_helper.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF121212),
      appBar: AppBar(
        backgroundColor: Color(0XFF121212),
        centerTitle: true,
        leading: Icon(
          CupertinoIcons.news,
          size: 1,
        ),
        title: Row(
          children: [
            SizedBox(
              width: 67,
            ),
            Icon(
              CupertinoIcons.padlock_solid,
              size: 18,
              color: Colors.blue,
            ),
            SizedBox(
              width: 2,
            ),
            Text(
              "Fazal_Hamza",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(
              CupertinoIcons.line_horizontal_3,
              size: 26,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 20,
              ),
              CircleAvatar(
                radius: 55,
                child: UiHelper.customImages(imgurl: 'myprofile.png'),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 10,),
                      Text("20", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),),
                      SizedBox(width: 50,),
                      Text("752", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),),
                      SizedBox(width: 50,),
                      Text("162", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 22),),
                    ],
                  ),
                  Row(
                    children: [
                    SizedBox(width: 30,),
                    Text("Post", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),),
                    SizedBox(width: 30,),
                    Text("Followers", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),),
                    SizedBox(width: 30,),
                    Text("Following", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),),
                  ],)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
