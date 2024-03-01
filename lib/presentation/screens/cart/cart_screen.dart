import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orderit/presentation/screens/home/widgets/cart_list.dart';
import 'package:orderit/presentation/theme/theme/constants/colors.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'Cart',
          style: GoogleFonts.manrope(
            color: OrderitColors.green,
          ),
        ),
        centerTitle: true,
      ),
      body: CartList(),
    );
  }
}
