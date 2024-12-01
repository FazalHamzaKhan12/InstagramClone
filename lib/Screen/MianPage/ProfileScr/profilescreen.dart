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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "20",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 22),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "752",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 22),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Text(
                        "162",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 22),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Post",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 16),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 16),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "Following",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 16),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                'Fazal_Hamza',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                'Youtube 👇👇👇',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Text(
                'FazalTechWorld',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              height: 40,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey, // Border color
                  width: 1.0,
                ),
                color: Colors.black, // Move color inside BoxDecoration
                borderRadius:
                    BorderRadius.circular(10), // Correct usage of borderRadius
              ),
              child: Center(
                child: Text(
                  'Edit Profile',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14), // Optional text styling
                ),
              ),
            ),
          ),
          SizedBox(height: 25,),
          Row(
            children: [
              SizedBox(width: 25,),
              Container(
                width: 80, // Diameter of the CircleAvatar (2 * radius + border width)
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.yellow,
                    width: 1.0,
                  ),
                ),
                child: CircleAvatar(
                    backgroundColor: Color(0XFF121212),
                  child: Icon(CupertinoIcons.plus),
                ),
              ),
              SizedBox(width: 25,),
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1,
                    color: Colors.pinkAccent
                  ),
                ),
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/Myf.jpg", // Or use NetworkImage if the image is from the web.
                      fit: BoxFit
                          .cover, // Ensures the image covers the circle without stretching.
                      width: 80, // Double the radius for a perfect fit.
                      height: 80, // Double the radius for a perfect fit.
                    ),
                  ),
                ),
              ),
              SizedBox(width: 25,),
              Container(
                width: 80, height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.green,
                    width: 1,
                  )
                ),
                child: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/1000025770.jpg", // Or use NetworkImage if the image is from the web.
                      fit: BoxFit
                          .cover, // Ensures the image covers the circle without stretching.
                      width: 80, // Double the radius for a perfect fit.
                      height: 80, // Double the radius for a perfect fit.
                    ),
                  ),
                ),
              ),
              ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              SizedBox(width: 46,),
              Text("New",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
              SizedBox(width: 76,),
              Text("Pic",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
              SizedBox(width: 58,),
              Text("Chappal",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
            ],
          ),
        ],
      ),
    );
  }
}
