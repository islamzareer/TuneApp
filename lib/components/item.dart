import 'package:flutter/material.dart';
import 'package:tune_player/models/item_info.dart';

class Item extends StatelessWidget {
  final ItemInfo item;
  const Item({super.key,  required this.item});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap:()=> item.playSound(item.sound),
        child: Container(
          color: item.color,
        ),
      ),
    );
  }
}
