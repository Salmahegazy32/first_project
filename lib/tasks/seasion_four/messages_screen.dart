import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  String img =
      "https://blog.logrocket.com/wp-content/uploads/2021/05/intro-dart-flutter-feature.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        centerTitle: true,
        title: const Text("Messages"),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return messageComponent();
          }),
    );
  }
  Widget messageComponent(){
    return Card(
      elevation: 3,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(img),
              radius: 32,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Mohamed",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black),

                          ),
                        ),
                        SizedBox(width: 30,),
                        Text(
                          "12:07",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black
                          ),
                        ),





                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Hello world hello world Hello world hello world Hello world hello world",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
            IconButton(onPressed: (){},
              icon:  Icon(Icons.navigate_next,
                color: Colors.grey[500],),)
          ],
        ),
      ),
    );
  }
}