import 'package:flutter/material.dart';
import 'package:toku_app/models/item_info.dart';

class ContainerNamber extends StatelessWidget {
  const ContainerNamber({super.key, required this.item, required this.color});
  final ItemInfoModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(
        children: [
          item.image == null
              ? const SizedBox(
                  width: 20,
                )
              : Container(
                  width: 110,
                  margin: const EdgeInsets.only(right: 10),
                  color: const Color(0xffFFF6DC),
                  child: Image.asset(
                    item.image!,
                  ),
                ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.jaText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              item.image == null
                  ? const SizedBox(
                      width: 300,
                      child: Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                    )
                  : const SizedBox(
                      width: 150,
                      child: Divider(
                        color: Colors.white,
                        thickness: 1,
                      ),
                    ),
              Text(
                item.enText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: () {
              item.playSound();
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 26,
            ),
          ),
          const SizedBox(
            width: 30,
          )
        ],
      ),
    );
  }
}
