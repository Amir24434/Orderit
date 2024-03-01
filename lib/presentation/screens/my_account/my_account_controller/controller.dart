import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orderit/presentation/screens/cart/cart_controller.dart';
import 'package:orderit/presentation/screens/my_account/my_account_controller/account_tiles.dart';
import 'package:orderit/presentation/theme/theme/constants/colors.dart';

class AccountScreenTiles extends StatefulWidget {
  final int index;
  const AccountScreenTiles({
    super.key,
    required this.index,
  });

  @override
  State<AccountScreenTiles> createState() => _AccountScreenTilesState();
}

class _AccountScreenTilesState extends State<AccountScreenTiles> {
  final CartController controller = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 5.0,
      ),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: const BoxDecoration(
            color: OrderitColors.light,
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: ListTile(
            leading: AccountTabs.accountTabs[widget.index].leadingIcon,
            title: Text(
              AccountTabs.accountTabs[widget.index].title,
            ),
            trailing: AccountTabs.accountTabs[widget.index].trailingIcon,
          ),
        ),
      ),
    );
  }
}
