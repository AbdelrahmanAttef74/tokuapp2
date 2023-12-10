//class = model
class ItemModel {
  const ItemModel({
    this.image,
    required this.enName,
    required this.jpName,
    required this.sound,
  });
  final String? image;
  final String jpName;
  final String enName;
  final String sound;
}
