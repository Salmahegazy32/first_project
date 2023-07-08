import 'package:flutter/material.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {

  final String imageUrl = "https://blog.logrocket.com/wp-content/uploads/2021/05/intro-dart-flutter-feature.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog",),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

      },
        child: Icon(Icons.add) ,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: ListView.builder(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(imageUrl),
                ),
              );
            },
          ),
        ),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
              return blogItem();
            },
            ),
          ),
        ],
      ),
    );
  }

  Widget blogItem(){
    return Container(

    );
  }
}
