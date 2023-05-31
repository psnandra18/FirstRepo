class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "fdskf",
      name: "fjdbf",
      desc: "fjdbf",
      price: 56,
      color: "fdsf",
      image: "fdsf")
];
