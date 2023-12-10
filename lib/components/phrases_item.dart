import 'package:flutter/material.dart';
import 'package:tuku_app/components/items_info.dart';
import 'package:tuku_app/models/number_model.dart';

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ItemInfo(item: item, color: color);
  }
}
