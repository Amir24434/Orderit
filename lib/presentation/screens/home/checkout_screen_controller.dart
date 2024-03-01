import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orderit/presentation/screens/cart/cart_controller.dart';
import 'package:orderit/data/product_data.dart';
import 'package:orderit/presentation/theme/theme/constants/colors.dart';

class CartProductCard extends StatefulWidget {
  final Product product;
  final int quantity;
  final int index;
  const CartProductCard({
    super.key,
    required this.index,
    required this.product,
    required this.quantity,
  });

  @override
  State<CartProductCard> createState() => _CartProductCardState();
}

class _CartProductCardState extends State<CartProductCard> {
  final CartController controller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          color: OrderitColors.light,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                width: 65,
                height: 85,
                image: AssetImage(widget.product.imagePath),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: GoogleFonts.lato(
                      color: OrderitColors.greenBackground,
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    '#${widget.product.price}',
                    style: GoogleFonts.lato(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Text(
                    '512.58',
                    style: GoogleFonts.lato(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  Text(
                    'Yellow',
                    style: GoogleFonts.lato(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Icon(
                    Icons.heart_broken_outlined,
                    size: 15,
                  ),
                ],
              ),
              Container(
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: OrderitColors.greenContainer,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            controller.addProduct(widget.product);
                          },
                          child: const Icon(
                            Icons.add,
                            color: OrderitColors.green,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(
                      '${widget.quantity}',
                      style: GoogleFonts.manrope(
                        color: const Color.fromARGB(255, 16, 37, 85),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            controller.removeProduct(widget.product);
                          },
                          child: const Icon(
                            Icons.remove,
                            color: OrderitColors.greenBackground,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
