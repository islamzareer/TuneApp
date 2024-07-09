import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class ItemInfo {
  String sound;
  Color color;
  ItemInfo({
    required this.color,
    required this.sound,
  });

  void playSound(String sound) async{
    
      AssetsAudioPlayer.newPlayer().open(
        Audio(sound),
        autoStart: true,
        showNotification: true,);
      
    }
  }

