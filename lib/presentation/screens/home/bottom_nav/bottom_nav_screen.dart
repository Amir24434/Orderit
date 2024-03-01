import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orderit/presentation/screens/cart/cart_screen.dart';
import 'package:orderit/presentation/screens/home/home.dart';
import 'package:orderit/presentation/screens/my_account/my_account_screen.dart';
import 'package:orderit/presentation/theme/theme/constants/colors.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;
  final pages = [
    const HomeScreen(),
    const CartScreen(),
    const MyAccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          unselectedLabelStyle: GoogleFonts.manrope(
            color: Colors.grey[500],
          ),
          selectedItemColor: OrderitColors.greenBackground,
          unselectedItemColor: Colors.grey[500],
          showUnselectedLabels: true,
          currentIndex: _currentIndex,
          onTap: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              backgroundColor: Color(0xff002555),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              backgroundColor: Color(0xff002555),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_3_outlined,
              ),
              backgroundColor: Color(0xff002555),
              label: 'My Account',
            ),
          ],
        ),
      ),
    );
  }
}
