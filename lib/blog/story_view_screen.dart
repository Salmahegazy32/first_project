import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryViewScreen extends StatefulWidget {
  const StoryViewScreen({super.key});

  @override
  State<StoryViewScreen> createState() => _StoryViewScreenState();
}

class _StoryViewScreenState extends State<StoryViewScreen> {
  @override
  final controller = StoryController();
  Widget build(context) {
    List<StoryItem> storyItems = [
      StoryItem.text( title: 'Abanob', backgroundColor: Colors.blueGrey),
      StoryItem.pageImage(url: 'https://blog.logrocket.com/wp-content/uploads/2021/05/intro-dart-flutter-feature.png', controller: controller),
      StoryItem.pageImage(url: 'https://phantom-marca.unidadeditorial.es/e78616bbda77fe6fbc6b1ed5a05d3232/resize/828/f/webp/assets/multimedia/imagenes/2023/06/21/16873550466244.png', controller: controller),

    ]; // your list of stories

    return StoryView(
      storyItems:
      storyItems
      ,
      controller: controller, // pass controller here too
      repeat: true, // should the stories be slid forever

      onComplete: () {},
      onVerticalSwipeComplete: (direction) {
        if (direction == Direction.down) {
          Navigator.pop(context);
        }
      },  // To disable vertical swipe gestures, ignore this parameter.
      // Preferrably for inline story view.
    );
  }
}