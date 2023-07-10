import 'package:flutter/material.dart';

import 'blog.dart';

class EditBlogScreen extends StatefulWidget {
  const EditBlogScreen({super.key, required this.title, required this.content, required this.imageUrl});
  final String title ;
  final String content ;
  final String imageUrl ;
  @override
  State<EditBlogScreen> createState() => _EditBlogScreenState();
}

class _EditBlogScreenState extends State<EditBlogScreen> {
  final titleController = TextEditingController();
  final contentController = TextEditingController();
  final imageController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    titleController.text = widget.title ;
    contentController.text = widget.content;
    imageController.text = widget.imageUrl ;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        title: const Text(
            " Edit Blog "
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
                    editBlog();
                  },
                  child: const Text(
                      "update "
                  )),
            )
          ],
        ),
      ),
    );
  }

  void editBlog() {
    String title = titleController.text;
    String content = contentController.text;
    String image = imageController.text;
    final blog = Blog(title: title, content: content, image: image);
    Navigator.pop(context,blog);
  }
}