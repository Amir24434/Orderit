import 'package:orderit/presentation/theme/theme/constants/image_strings.dart';

class Product {
  final String name;
  final double price;
  final String imagePath;
  final String desc;

  const Product(
      {required this.name,
      required this.price,
      required this.imagePath,
      required this.desc});

  static const List<Product> products = [
    Product(
      price: 230.00,
      imagePath: OrderitImages.productImage5,
      name: "EKERO",
      desc:
          "A minimalist chair with a reversible back cushion provides soft support for your back and has two sides to wear.",
    ),
    Product(
      price: 274.13,
      imagePath: OrderitImages.productImage6,
      name: "STRANDMON",
      desc:
          "A minimalist chair with a reversible back cushion provides soft support for your backand has two sides to wear.",
    ),
    Product(
        price: 24.99,
        imagePath: OrderitImages.productImage7,
        name: "PLATTLANS",
        desc:
            "A minimalist chair with a reversible back cushion provides soft support for your back and has two sides to wear."),
    Product(
        price: 139.99,
        imagePath: OrderitImages.productImage8,
        name: "MALM",
        desc:
            "A minimalist chair with a reversible back cushion provides soft support for your back and has two sides to wear."),
    Product(
        price: 139.99,
        imagePath: OrderitImages.productImage8,
        name: "MALM",
        desc:
            "A minimalist chair with a reversible back cushion provides soft support for your back and has two sides to wear."),
    Product(
        price: 139.99,
        imagePath: OrderitImages.productImage8,
        name: "MALM",
        desc:
            "A minimalist chair with a reversible back cushion provides soft support for your back and has two sides to wear."),
    Product(
        price: 139.99,
        imagePath: OrderitImages.productImage8,
        name: "MALM",
        desc:
            "A minimalist chair with a reversible back cushion provides soft support for your back and has two sides to wear."),
    Product(
        price: 139.99,
        imagePath: OrderitImages.productImage8,
        name: "MALM",
        desc:
            "A minimalist chair with a reversible back cushion provides soft support for your back and has two sides to wear."),
    Product(
        price: 159.99,
        imagePath: OrderitImages.productImage9,
        name: "MALCOLM",
        desc:
            "A minimalist chair with a reversible back cushion provides soft support for your back and has two sides to wear."),
    Product(
        price: 139.99,
        imagePath: OrderitImages.productImage10,
        name: "FLAPPING",
        desc:
            "A minimalist chair with a reversible back cushion provides soft support for your back and has two sides to wear."),
    Product(
        price: 179.99,
        imagePath: OrderitImages.productImage11,
        name: "THREE SEATERS",
        desc:
            "A minimalist chair with a reversible back cushion provides soft support for your back and has two sides to wear."),
    Product(
        price: 109.99,
        imagePath: OrderitImages.productImage12,
        name: "CUSHION",
        desc:
            "A minimalist chair with a reversible back cushion provides soft support for your back and has two sides to wear."),
  ];
}
