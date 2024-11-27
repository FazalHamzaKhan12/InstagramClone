import 'package:flutter/material.dart';
import 'package:instagram_clone/Widgets/ui_helper.dart';

class Serachscreen extends StatelessWidget {
  const Serachscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controllers = TextEditingController();

    const arrContent = [
      {
        'img':
        'https://www.recordnet.com/gcdn/presto/2021/03/22/NRCD/9d9dd9e4-e84a-402e-ba8f-daa659e6e6c5-PhotoWord_003.JPG'
      },
      {
        'img':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1OT1fhCSataGBl5O0yYNNdKG-OSh09fOIOQ&s'
      },
      {
        'img':
        "https://static.vecteezy.com/system/resources/thumbnails/025/181/412/small/picture-a-captivating-scene-of-a-tranquil-lake-at-sunset-ai-generative-photo.jpg"
      },
      {
        'img':
        "https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg"
      },
      {
        'img':
        'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_1280.jpg'
      },
      {
        'img':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6ub0pgXnjiEfXzH4seCasYRX8VtHsDFBLDQ&s'
      },
      {
        'img':
        "https://sb.kaleidousercontent.com/67418/960x550/d1e78c2a25/individuals-a.png"
      },
      {
        'img':
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl_0FSQJeCnNVtqFioAiQoV9c1MRHMFuSp3Q&s"
      },
      {
        'img':
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJQIhdk6Gaw_gIkxOpvJx_g-pwlxzao7uhpQ&s"
      },
      {
        'img':
        'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_1280.jpg'
      },
      {
        'img':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6ub0pgXnjiEfXzH4seCasYRX8VtHsDFBLDQ&s'
      },
      {
        'img':
        "https://sb.kaleidousercontent.com/67418/960x550/d1e78c2a25/individuals-a.png"
      },
      {
        'img':
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl_0FSQJeCnNVtqFioAiQoV9c1MRHMFuSp3Q&s"
      },
      {
        'img':
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJQIhdk6Gaw_gIkxOpvJx_g-pwlxzao7uhpQ&s"
      },
      {
        'img':
        "https://static.vecteezy.com/system/resources/thumbnails/025/181/412/small/picture-a-captivating-scene-of-a-tranquil-lake-at-sunset-ai-generative-photo.jpg"
      },
      {
        'img':
        "https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg"
      },
      {
        'img':
        'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_1280.jpg'
      },
      {
        'img':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6ub0pgXnjiEfXzH4seCasYRX8VtHsDFBLDQ&s'
      },
      {
        'img':
        "https://static.vecteezy.com/system/resources/thumbnails/025/181/412/small/picture-a-captivating-scene-of-a-tranquil-lake-at-sunset-ai-generative-photo.jpg"
      },
      {
        'img':
        "https://static.vecteezy.com/system/resources/thumbnails/036/324/708/small/ai-generated-picture-of-a-tiger-walking-in-the-forest-photo.jpg"
      },
      {
        'img':
        'https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455_1280.jpg'
      },
      {
        'img':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6ub0pgXnjiEfXzH4seCasYRX8VtHsDFBLDQ&s'
      },
    ];

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 350,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0XFF262626),
                ),
                child: TextField(
                  controller: controllers,
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon:
                    UiHelper.customImages(imgurl: "Search Icon.png"),
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF8E8E93),
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              UiHelper.customImages(imgurl: 'Live.png'),
            ],
          ),
          const SizedBox(
            height: 7,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              UiHelper.customContainer(
                mainText: "IGTV",
                yourimage: "Icon (2).png",
                heghtCon: 32,
                widthCon: 72,
              ),
              const SizedBox(width: 10),
              UiHelper.customContainer(
                mainText: "Shop",
                yourimage: "shopping.png",
                heghtCon: 32,
                widthCon: 72,
              ),
              const SizedBox(width: 10),
              UiHelper.customContainer(
                mainText: "Style",
                yourimage: null,
                heghtCon: 32,
                widthCon: 50,
              ),
              const SizedBox(width: 10),
              UiHelper.customContainer(
                mainText: "Sports",
                yourimage: null,
                heghtCon: 32,
                widthCon: 60,
              ),
              const SizedBox(width: 10),
              UiHelper.customContainer(
                mainText: "Auto",
                yourimage: null,
                heghtCon: 32,
                widthCon: 40,
              ),
              const SizedBox(width: 10),
              UiHelper.customContainer(
                mainText: "Fazal",
                yourimage: null,
                heghtCon: 32,
                widthCon: 50,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
            child: GridView.builder(
              controller: ScrollController(),
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) {
                return Container(
                  clipBehavior: Clip.antiAlias,
                  height: 124,
                  width: 126,
                  decoration: const BoxDecoration(),
                  child: Image.network(
                    arrContent[index]["img"].toString(),
                    fit: BoxFit.cover,
                  ),
                );
              },
              itemCount: arrContent.length,
            ),
          ),
        ],
      ),
    );
  }
}
