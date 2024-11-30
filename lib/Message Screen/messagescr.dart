import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/Screen/MianPage/HomeScr/homescreen.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arcContent = [
      {
        'img':
            "https://media.sproutsocial.com/uploads/2022/06/profile-picture.jpeg",
        'name': "Ibrahim",
        "lastMsg": 'Have a nice day, bro!'
      },
      {
        'img':
            "https://images.pexels.com/photos/771742/pexels-photo-771742.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        'name': "Ali",
        "lastMsg": '130k done bro'
      },
      {
        'img':
            "https://media.istockphoto.com/id/450702763/photo/trendy-male-model-wearing-sunglasses.jpg?s=612x612&w=0&k=20&c=kruPTdP8digOEb1QWT7bcd7PL2euwNCVKJnTk8dpTrw=",
        'name': "Bobenstin",
        "lastMsg": 'Sounds good 😂😂😂'
      },
      {
        'img':
            "https://neconnected.co.uk/wp-content/uploads/2024/07/ga838bd91622c55208a857c393242a51c0ed1b400fa3711f2309e5b37c58fb67794e72569061d0dfa41d1537046ff505c_640.png",
        'name': "NikolaTesla",
        "lastMsg": 'I want to collabrate..'
      },
      {
        'img':
        "https://inforrm.org/wp-content/uploads/2018/06/unknown.jpg",
        'name': "Unknown",
        "lastMsg": 'hello can you make ....'
      },
      {
        'img':
        "https://yt3.googleusercontent.com/r09RpDUvcrXhuGYFqVujMChDqX_MTQbH6ronxmHWQuT5detla632gIkElqz-1lvKBAz7rzR50g=s900-c-k-c0x00ffffff-no-rj",
        'name': "TechBurner",
        "lastMsg": 'bro kesa hoo'
      },
      {
        'img':
        "https://media.istockphoto.com/id/450702763/photo/trendy-male-model-wearing-sunglasses.jpg?s=612x612&w=0&k=20&c=kruPTdP8digOEb1QWT7bcd7PL2euwNCVKJnTk8dpTrw=",
        'name': "Bobenstin",
        "lastMsg": 'Sounds good 😂😂😂'
      },
      {
        'img':
        "https://neconnected.co.uk/wp-content/uploads/2024/07/ga838bd91622c55208a857c393242a51c0ed1b400fa3711f2309e5b37c58fb67794e72569061d0dfa41d1537046ff505c_640.png",
        'name': "NikolaTesla",
        "lastMsg": 'I want to collabrate..'
      },
      {
        'img':
        "https://inforrm.org/wp-content/uploads/2018/06/unknown.jpg",
        'name': "Unknown",
        "lastMsg": 'hello can you make ....'
      },
      {
        'img':
        "https://yt3.googleusercontent.com/r09RpDUvcrXhuGYFqVujMChDqX_MTQbH6ronxmHWQuT5detla632gIkElqz-1lvKBAz7rzR50g=s900-c-k-c0x00ffffff-no-rj",
        'name': "TechBurner",
        "lastMsg": 'bro kesa hoo'
      },

    ];
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
            Text(
              "Fazal_Hamza",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              CupertinoIcons.arrow_turn_right_down,
              size: 22,
            )
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
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
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
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0XFF8E8E93)),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Icon(
                            Icons.search,
                          ),
                        ),
                        border: InputBorder.none),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: ClipOval(
                    child: Image.network(
                      arcContent[index]['img'].toString(),
                      width: 60, // Set width for the circular image
                      height: 60, // Set height for the circular image
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    arcContent[index]['name'].toString(),
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(arcContent[index]["lastMsg"].toString(),
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                  trailing: Icon(CupertinoIcons.camera),
                );
              },
              itemCount: arcContent.length,
            ),
          )
        ],
      ),
    );
  }
}
