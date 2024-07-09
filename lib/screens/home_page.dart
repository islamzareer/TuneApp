import 'package:flutter/material.dart';
import 'package:tune_player/components/item.dart';
import 'package:tune_player/models/item_info.dart';

class HomePage extends StatelessWidget {
  final List<ItemInfo> tunes = [
    ItemInfo(color: Colors.red, sound: "assets/note1.wav"),
    ItemInfo(color: Colors.orange, sound: "assets/note2.wav"),
    ItemInfo(color: Colors.yellow, sound: "assets/note3.wav"),
    ItemInfo(color: Colors.lightGreen, sound: "assets/note4.wav"),
    ItemInfo(color: Colors.green, sound: "assets/note5.wav"),
    ItemInfo(color: Colors.blue, sound: "assets/note6.wav"),
    ItemInfo(color: Colors.purple, sound: "assets/note7.wav"),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Tunes",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 85, 84, 84),
        ),
       body: Column (
        children: tunes
            .map(
              (e) => Item(item: e),
            )
            .toList(),
       ),
      ),
    );
  }
}
