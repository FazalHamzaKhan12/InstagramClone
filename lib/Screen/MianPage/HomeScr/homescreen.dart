import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:instagram_clone/Widgets/ui_helper.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arrContent = [
      {
        'img':
            "https://lifetouch.com/wp-content/uploads/2018/06/Underclass_girlwithbluebg.jpg",
        'name': "Your Story",
      },
      {
        'img':
            "https://i.pinimg.com/originals/44/76/c1/4476c13d6fd11b568b6aaba94e00e8a9.jpg",
        'name': "Alex",
      },
      {
        'img':
            "https://i.pinimg.com/originals/73/ae/d0/73aed05142df5571e7682b824293a1a3.jpg",
        'name': "Boby",
      },
      {
        'img':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFL2kEkh7iC6rTsvcSrQ1gr2GUZw0mJYl59oZgNczsnCRKNC8rCXwTTJGlZAJ97XsH1F0&usqp=CAU",
        'name': "Albert",
      },
      {
        'img':
            "https://i.pinimg.com/236x/a2/e8/b5/a2e8b5b2bdd38eddd80bc8a98f9f89ff.jpg",
        'name': "Micheal",
      },
      {
        'img':
            "https://i.pinimg.com/236x/29/99/b5/2999b55f1957442bdf9bbe8aad00c9e2.jpg",
        'name': "Roman",
      },
      {
        'img':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSkRGXT5P5qndaw99horJHlm71Sjv1ecGkKHeb4dvD16w9NiYS1i8ILckN_IJvyQAQTE4&usqp=CAU",
        'name': "Hanan",
      },
      {
        'img':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIdO37rKs9AjYURrgtBN97Jgorld66BH9eYgf4cgtT5i2uzyfZp6AI7BrECA7nEQ9Esso&usqp=CAU",
        'name': "Ibrhaim",
      },
    ];

    ScrollController scrollController = ScrollController();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 88,
        backgroundColor: Colors.black26,
        leading: Image.asset("assets/images/Camicon.png"),
        title: Image.asset("assets/images/Instagram Logo (1).png"),
        centerTitle: true,
        actions: [
          Icon(Icons.add),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.messenger),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Column(
        children: [

          SizedBox(
            height: 120, // Adjust height to fit image and text
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                controller: scrollController,
                itemCount: arrContent.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        Container(
                          width: 70, // Adjust size
                          height: 70,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              colors: [
                                Color(0XFFFBAA47),
                                Color(0XFFD91A46),
                                Color(0XFFA60F93),
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(
                                3.0), // Adjust border thickness
                            child: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                arrContent[index]["img"].toString(),
                              ),
                            ),
                          ), // Properly closed the Container's child
                        ),
                        const SizedBox(
                            height: 5), // Spacing between image and text
                        Text(
                          arrContent[index]["name"].toString(),
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            height: 375,
            width: 375,
            color: Colors.black26,
            child: ListTile(
              leading: Padding(
                padding: const EdgeInsets.all(3),
                child: UiHelper.customImages(imgurl: 'myprofile.png'),
              ),
              title: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Baseline(
                    baseline: 14, // Set baseline to align with text
                    baselineType: TextBaseline.alphabetic,
                    child: Text(
                      "Fazal Hamza Khan",
                      style: TextStyle(
                        color: Color(0XFFF9F9F9),
                        fontSize: 14,
                      ),
                    ),
                  ),
            SizedBox(width: 5,),
            Baseline(
              baseline: 10, // Match the text's baseline
              baselineType: TextBaseline.alphabetic,
              child: Icon(
                Icons.verified,
                color: Colors.blue,
                size: 12,
              ),)
                ],
              ),
              subtitle: Text("Pakistan",style: TextStyle(fontWeight: FontWeight.w400,color: Color(0XFFF9F9F9),fontSize: 12),),
            ),
          )
        ],
      ),
    );
  }
}
