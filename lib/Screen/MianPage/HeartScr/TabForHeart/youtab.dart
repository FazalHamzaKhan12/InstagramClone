import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/ui_helper.dart';

class YouTab extends StatelessWidget {
  const YouTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          // Fol;ow Requests Header
          Container(
            height: 48,
            width: double.infinity,
            color: Colors.black,
            child: const Padding(
              padding: EdgeInsets.only(top: 15, left: 20),
              child: Text(
                'Follow Requests',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          // Notification Section
          Container(
            height: 106,
            width: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                const SizedBox(height: 4),
                Row(
                  children: const [
                    SizedBox(width: 20),
                    Text(
                      "New",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                // Notification ListTile
                ListTile(
                  leading: UiHelper.customImages(imgurl: "Oval (3).png"),
                  title: const Text(
                    "design123 liked your photo.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  subtitle: const Text(
                    "10min ago",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  trailing: UiHelper.customImages(imgurl: "Rectangle.png"),
                ),
              ],
            ),
          ),

          // Second Notification Section (Optional: Remove if not needed)
          Container(
            height: 106,
            width: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                const SizedBox(height: 5),
                Row(
                  children: const [
                    SizedBox(width: 20),
                    Text(
                      "Today",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                // Notification ListTile
                ListTile(
                  leading: UiHelper.customImages(imgurl: "Oval (5).png"),
                  title: const Text(
                    "kiero_d, zackjohn and 26 others liked your photo.",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  subtitle: const Text(
                    "1d ago",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  trailing: UiHelper.customImages(imgurl: "Rectangle.png"),
                ),
              ],
            ),
          ),
          Container(
            height: 106,
            width: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                const SizedBox(height: 5),
                Row(
                  children: const [
                    SizedBox(width: 20),
                    Text(
                      "This Week",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                // Notification ListTile
                ListTile(
                  leading: UiHelper.customImages(imgurl: "Oval (4).png"),
                  title: const Text(
                    "craig_love mentioned you in a comment: @jacob_w exactly..😎",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  subtitle: const Text(
                    "2d ago",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  trailing: UiHelper.customImages(imgurl: "Rectangle (2).png"),
                ),
              ],
            ),
          ),
          Container(
            height: 106,
            width: double.infinity,
            color: Colors.black,
            child: Column(
              children: [
                const SizedBox(height: 5),
                Row(
                  children: const [
                    SizedBox(width: 20),

                  ],
                ),
                // Notification ListTile
                ListTile(
                  leading: UiHelper.customImages(imgurl: "Oval (8).png"),
                  title: const Text(
                    "JAjatrfne mentioned you in a comment: @jacob_w Dude..🤞",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                  subtitle: const Text(
                    "3d ago",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),
                  ),
                  trailing: UiHelper.customImages(imgurl: "Rectangle (2).png"),
                ),
              ],
            ),
          ),
          SizedBox(height: 2,),
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.black,
            child: ListTile(
              leading: UiHelper.customImages(imgurl: "Oval (1).png"),
              title: const Text(
                "martini_rond started following you.",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
              subtitle: const Text(
                "4d ago",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                ),
              ),
              trailing: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Background color
                foregroundColor: Colors.white, // Text color
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
                textStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(width: .5,color: Colors.yellow)
                  // Rounded corners
                ),
              ),
                child: const Text("Message"),)
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
            color: Colors.black,
            child: ListTile(
                leading: UiHelper.customImages(imgurl: "Oval (2).png"),
                title: const Text(
                  "martini_rond started following you.",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                subtitle: const Text(
                  "5d ago",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                trailing: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Background color
                  foregroundColor: Colors.white, // Text color
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 1),
                  textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(width: .5,color: Colors.grey.shade300)
                    // Rounded corners
                  ),
                ),
                  child: const Text("Follow"),)
            ),
          )
        ],
      ),
    );
  }
}
