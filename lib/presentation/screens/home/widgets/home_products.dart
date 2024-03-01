import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orderit/presentation/screens/cart/cart_controller.dart';
import 'package:orderit/data/product_data.dart';
import 'package:orderit/presentation/screens/home/product_details.dart';
import 'package:orderit/presentation/theme/theme/constants/colors.dart';

class HomeProductsList extends StatefulWidget {
  const HomeProductsList({
    super.key,
    required this.index,
  });

  final int index;

  @override
  State<HomeProductsList> createState() => _HomeProductsListState();
}

class _HomeProductsListState extends State<HomeProductsList> {
  final CartController controller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => DetailScreen(
            name: Product.products[widget.index].name,
            price: Product.products[widget.index].price,
            image: Product.products[widget.index].imagePath,
            index: widget.index,
            desc: Product.products[widget.index].desc,
          ),
        );
      },
      child: Container(
        width: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: OrderitColors.light,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(
                    fit: BoxFit.fitWidth,
                    image: AssetImage(Product.products[widget.index].imagePath),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          Product.products[widget.index].name,
                          style: GoogleFonts.manrope(
                            color: OrderitColors.textGreen,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$${Product.products[widget.index].price.toString()}',
                            ),
                            GestureDetector(
                              onTap: () {
                                controller
                                    .addProduct(Product.products[widget.index]);
                              },
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                  color: OrderitColors.greenBackground,
                                  borderRadius: BorderRadius.only(
                                    //topRight: Radius.circular(40.0),
                                    topLeft: Radius.circular(10.0),
                                    bottomRight: Radius.circular(10.0),
                                    // bottomLeft: Radius.circular(40.0),
                                  ),
                                ),
                                child: const Center(
                                  child: Icon(
                                    Icons.add,
                                    size: 17,
                                    color: OrderitColors.light,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                  top: 100,
                  left: -12,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(15.0),
                            topLeft: Radius.circular(15.0),
                          )),
                      height: 20,
                      width: 65,
                      child: Center(
                        child: Text(
                          "45% off",
                          style: GoogleFonts.manrope(
                            color: OrderitColors.light,
                          ),
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
