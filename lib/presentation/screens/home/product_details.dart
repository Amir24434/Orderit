import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orderit/presentation/components/widgets/custom_button.dart';
import 'package:orderit/presentation/screens/cart/cart_controller.dart';
import 'package:orderit/data/product_data.dart';
import 'package:orderit/presentation/screens/cart/cart_screen.dart';
import 'package:orderit/presentation/theme/theme/constants/colors.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    super.key,
    required this.name,
    required this.price,
    required this.image,
    required this.index,
    required this.desc,
  });
  final String name;
  final double price;

  final String image;
  final int index;
  final String desc;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  final CartController controller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(children: [
                  Center(
                    child: Image(
                      image: AssetImage(widget.image),
                      width: 250,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: OrderitColors.light,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20.0),
                            topLeft: Radius.circular(20.0),
                          )),
                      height: 450,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.name,
                              style: GoogleFonts.manrope(),
                            ),
                            Text(
                              widget.price.toString(),
                              style: GoogleFonts.manrope(
                                fontSize: 32,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text(
                              widget.desc,
                              style: GoogleFonts.manrope(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage(widget.image),
                                  width: 100,
                                  fit: BoxFit.fill,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Image(
                                  image: AssetImage(widget.image),
                                  width: 100,
                                  fit: BoxFit.fill,
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 70,
                color: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Center(
                    child: CustomButton(
                      color: OrderitColors.greenBackground,
                      text: 'Add to Cart',
                      textColor:
                          GoogleFonts.manrope(color: OrderitColors.light),
                      onPressed: () {
                        controller.addProduct(Product.products[widget.index]);
                        Get.to(() => const CartScreen());
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
