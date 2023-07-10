import 'package:flutter/material.dart';

import 'blog.dart';

class AddBlogScreen extends StatefulWidget {
  const AddBlogScreen({super.key});

  @override
  State<AddBlogScreen> createState() => _AddBlogScreenState();
}

class _AddBlogScreenState extends State<AddBlogScreen> {

  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final imageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: const Text(
            " Add Blog "
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextFormField(
              keyboardType:TextInputType.text ,
              controller: titleController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "title"
              ) ,
            ),
            SizedBox(height: 15,),
            TextFormField(
              keyboardType:TextInputType.text ,
              controller: contentController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "content"
              ) ,
            ),
            SizedBox(height: 15,),
            TextFormField(
              keyboardType:TextInputType.text ,
              controller: imageController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "image url"
              ) ,
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(top: 15) ,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                  onPressed: (){
                    addNewBlog();
                  },
                  child: const Text(
                      "create new "
                  )),
            )
          ],
        ),
      ),
    );
  }
  void addNewBlog() {
    String title = titleController.text;
    String content = contentController.text;
    String image = imageController.text;
    final blog = Blog(title: title, content: content, image: image);
    Navigator.pop(context,blog);


  }
}