import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orderit/presentation/screens/cart/cart_controller.dart';
import 'package:orderit/presentation/screens/my_account/my_account_controller/account_tiles.dart';
import 'package:orderit/presentation/screens/my_account/my_account_controller/controller.dart';

class AccountTiles extends StatelessWidget {
  AccountTiles({
    super.key,
  });

  final CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: AccountTabs.accountTabs.length,
        itemBuilder: (BuildContext context, int index) {
          return AccountScreenTiles(
            index: index,
          );
        });
  }
}
