import 'package:audioplayers/audioplayers.dart';

class ItemInfoModel {
  final String? image;
  final String jaText;
  final String enText;
  final String sound;
  const ItemInfoModel(
      {required this.enText,
      this.image,
      required this.jaText,
      required this.sound});
  playSound() {
    final AudioPlayer player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
