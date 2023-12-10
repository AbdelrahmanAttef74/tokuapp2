import 'package:flutter/material.dart';
import 'package:tuku_app/components/phrases_item.dart';
import 'package:tuku_app/models/number_model.dart';

class NumberItem extends StatelessWidget {
  const NumberItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      height: 80,
      child: Row(
        children: [
          Container(
              color: const Color(0xfffff4dc), child: Image.asset(item.image!)),
          //here we customize some widget of container to reuse them in another screen;
          Expanded(
            child: PhrasesItem(color: color, item: item),
          ),
        ],
      ),
    );
  }
}
