import 'package:flutter/material.dart';

class Tabscreen extends StatelessWidget {
  var arrContents = [
    {
      "img":
          "https://trangoadventure.com/wp-content/uploads/2019/06/Day-1-2-1140x530.jpg"
    },
    {
      "img":
          "https://moderndiplomacy.eu/wp-content/uploads/2018/05/lahore-pakistan.jpg"
    },
    {
      "img":
          "https://cdn.britannica.com/14/144114-050-24FA947B/Bazaar-Rawalpindi-Pak.jpg"
    },{
      "img":
          "https://cdn.britannica.com/45/100345-050-E077D5BB/Tomb-Mohammed-Ali-Jinnah-Karachi-Pakistan.jpg"
    },
    {
      "img":
          "https://i.dawn.com/primary/2019/05/5ccade7ce2cf2.jpg"
    },
    {
      "img":
          "https://historicalplacesofmyhomeland.wordpress.com/wp-content/uploads/2015/06/8fa05-awesomeplaceinpunjabpakistan.jpg"
    },
    {
      "img":
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTS4ZERnKq0X1KV48Nm9NNVcodNfJWUuWfgyA&s"
    },
    {
      "img":
      "https://as2.ftcdn.net/v2/jpg/01/43/04/85/1000_F_143048571_XHeW1djDavn3kDfbdkrsOVgmJvkag1w3.jpg"
    },
    {
      "img":
      "https://cdn.pixabay.com/photo/2024/02/12/05/24/ai-generated-8567872_1280.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (context,index){
              return Container(
                clipBehavior: Clip.antiAlias,
                height: 124,
                width: 124,
                  decoration: BoxDecoration(
                  ),
                child: Image.network(arrContents[index]["img"].toString(),fit: BoxFit.cover,),
              );
            },itemCount: arrContents.length,));
  }
}
