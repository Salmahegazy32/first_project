import 'package:first_project/blog/story_view_screen.dart';
import 'package:flutter/material.dart';

import 'add_blog_screen.dart';
import 'blog.dart';
import 'edit_blog_screen.dart';


class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  final imageUrl =
      "https://blog.logrocket.com/wp-content/uploads/2021/05/intro-dart-flutter-feature.png";
  List<Blog> blog = [
    Blog(
      title: "Piano",
      content:
      "a large keyboard musical instrument with a wooden case enclosing a soundboard and metal strings, which are struck by hammers when the keys are depressed. The strings' vibration is stopped by dampers when the keys are released and can be regulated for length and volume by two or three pedals.",
      image:
      "https://cdn1.img.sputnikarabic.ae/img/104012/71/1040127161_0:171:4032:2439_600x0_80_0_0_bf877107b21a7dab90c7ce76c503464d.jpg",
    ), // 0
    Blog(
      title: "Titanic submarine",
      content:
      "Missing Titanic submarine LIVE: Can bodies be retrieved after implosion? Experts weigh in",
      image:
      "https://phantom-marca.unidadeditorial.es/e78616bbda77fe6fbc6b1ed5a05d3232/resize/828/f/webp/assets/multimedia/imagenes/2023/06/21/16873550466244.png",
    ), // 1
    Blog(
      title: "Customization Cars",
      content:
      "Two Customized Cars Rolling Through A City Street Photo Photo of two customized cars on a city side street. One car is raised up and the other is very low.",
      image:
      "https://burst.shopifycdn.com/photos/two-customized-cars-rolling-through-a-city-street.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title: const Text("Blog"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addBlogScreen();
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        navigateToStoryViewScreen();
                      },
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(imageUrl),
                          ),
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 11,
                          ),
                          const CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 10,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: blog.length,
                itemBuilder: (context, index) {
                  return blogContent(index);
                }),
          )
        ],
      ),
    );
  }

  Widget blogContent(index) {
    return Card(
      elevation: 10,
      child: Container(
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.blueGrey, borderRadius: BorderRadius.circular(25)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              child: Image(
                image: NetworkImage(blog[index].image),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      blog[index].title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      navigateToEditBlogScreen(index);
                    },
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        blog.removeAt(index);
                      });
                    },
                    icon: const Icon(
                      Icons.delete_outline,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                blog[index].content,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  void addBlogScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AddBlogScreen()),
    ).then((value) {
      setState(() {
        blog.add(value);
      });
    });
  }

  void navigateToStoryViewScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StoryViewScreen(),
      ),
    );
  }

  void navigateToEditBlogScreen(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditBlogScreen(
          title: blog[index].title,
          content: blog[index].content,
          imageUrl: blog[index].image,
        ),
      ),
    ).then((value) {
      setState(() {
        blog[index] = value ;
      });
    });
  }
}