import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orderit/presentation/screens/home/checkout_screen_controller.dart';
import 'package:orderit/presentation/screens/cart/cart_controller.dart';

class CartList extends StatelessWidget {
  CartList({
    super.key,
  });

  final CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
          itemCount: controller.products.length,
          itemBuilder: (BuildContext context, int index) {
            return CartProductCard(
              index: index,
              quantity: controller.products.values.toList()[index],
              product: controller.products.keys.toList()[index],
            );
          }),
    );
  }
}
