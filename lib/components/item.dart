import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Item extends StatelessWidget {
  final Color color;
  final String sound;
  const Item({super.key, required this.color, required this.sound});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () async {
          AssetsAudioPlayer.newPlayer().open(
            Audio(sound),
            autoStart: true,
            showNotification: true,
          );
        },
        child: Container(
          color: color,
        ),
      ),
    );
  }
}
