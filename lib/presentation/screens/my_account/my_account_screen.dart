import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orderit/presentation/theme/theme/constants/colors.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: OrderitColors.greenBackground,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'My Account',
                            style: GoogleFonts.manrope(
                              color: OrderitColors.light,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.notifications_none,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 70,
                    bottom: 20,
                  ),
                  color: Colors.grey[300],
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10, bottom: 5),
                          child: Text(
                            'General',
                            style: GoogleFonts.manrope(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
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
                              child: const ListTile(
                                leading: Icon(Icons.list_alt_outlined),
                                title: Text(
                                  'Transaction',
                                ),
                                trailing: Icon(Icons.keyboard_arrow_right),
                              ),
                            ),
                          ),
                        ),
                        Padding(
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
                              child: const ListTile(
                                leading: Icon(Icons.heart_broken_outlined),
                                title: Text(
                                  'Wishlist',
                                ),
                                trailing: Icon(Icons.keyboard_arrow_right),
                              ),
                            ),
                          ),
                        ),
                        Padding(
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
                              child: const ListTile(
                                leading: Icon(Icons.bookmark_border_outlined),
                                title: Text(
                                  'Saved Address',
                                ),
                                trailing: Icon(Icons.keyboard_arrow_right),
                              ),
                            ),
                          ),
                        ),
                        Padding(
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
                              child: const ListTile(
                                leading: Icon(Icons.credit_card_outlined),
                                title: Text(
                                  'Payment Methods',
                                ),
                                trailing: Icon(Icons.keyboard_arrow_right),
                              ),
                            ),
                          ),
                        ),
                        Padding(
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
                              child: const ListTile(
                                leading:
                                    Icon(Icons.notifications_none_outlined),
                                title: Text(
                                  'Notification',
                                ),
                                trailing: Icon(Icons.keyboard_arrow_right),
                              ),
                            ),
                          ),
                        ),
                        Padding(
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
                              child: const ListTile(
                                leading: Icon(Icons.lock_outline_rounded),
                                title: Text(
                                  'Security',
                                ),
                                trailing: Icon(Icons.keyboard_arrow_right),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            bottom: 5,
                            left: 10,
                          ),
                          child: Text(
                            'Help',
                            style: GoogleFonts.manrope(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
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
                              child: const ListTile(
                                leading: Icon(Icons.contact_support_outlined),
                                title: Text(
                                  'Help',
                                ),
                                trailing: Icon(Icons.keyboard_arrow_right),
                              ),
                            ),
                          ),
                        ),
                        Padding(
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
                              child: const ListTile(
                                leading: Icon(Icons.contact_emergency),
                                title: Text(
                                  'Contact Us',
                                ),
                                trailing: Icon(Icons.keyboard_arrow_right),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 85, horizontal: 10),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: const BoxDecoration(
                color: OrderitColors.light,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),

                  //topRight: Radius.circular(40.0),
                  //topLeft: Radius.circular(40.0),
                  //bottomRight: Radius.circular(40.0),
                  // bottomLeft: Radius.circular(40.0),
                ),
              ),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Fullname of the User',
                            style: GoogleFonts.manrope(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'User Email',
                            style: GoogleFonts.manrope(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Icon(
                        Icons.edit,
                        color: OrderitColors.green,
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
