import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Screen/MianPage/HomeScr/homescreen.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        clipBehavior: Clip.antiAlias,
        backgroundColor: Color(0XFF121212),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Homescreen()));
          },
          icon: Icon(CupertinoIcons.back),
        ),
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Fazal_Hamza",style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(width: 10,),
            Icon(CupertinoIcons.arrow_turn_right_down,size: 22,)
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(CupertinoIcons.plus),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 25,),
          Row(
            children: [
              SizedBox(width: 20,),
              Container(
               width: 375,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey[900], // Dark grey color
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: TextField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      hintText: "Serach",
                      hintStyle: TextStyle(fontWeight: FontWeight.w400, fontSize: 16,color: Color(0XFF8E8E93)),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Icon(Icons.search,),
                      ),
                      border: InputBorder.none
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
