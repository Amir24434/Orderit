import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:orderit/presentation/theme/theme/constants/colors.dart';
import 'package:orderit/presentation/theme/theme/constants/image_strings.dart';
import 'package:orderit/presentation/theme/theme/custom_themes/text_theme.dart';

class SliderHomeImages extends StatelessWidget {
  const SliderHomeImages({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image(
            fit: BoxFit.fill,
            image: AssetImage(image),
          ),
          Image(
            fit: BoxFit.fill,
            image: AssetImage(OrderitImages.productImage4),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Celebrate The',
                  style: OrderitTextTheme.darkTextTheme.headlineSmall,
                ),
                Text(
                  'Season With Us!',
                  style: OrderitTextTheme.darkTextTheme.headlineSmall,
                ),
                Text(
                  'Get discounts up to 75% for',
                  style: OrderitTextTheme.darkTextTheme.labelMedium,
                ),
                Text(
                  'furniture and decoration',
                  style: OrderitTextTheme.darkTextTheme.labelMedium,
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: OrderitColors.light,
                    ),
                    child: Text(
                      'Shop Now',
                      style: GoogleFonts.manrope(
                        color: OrderitColors.textGreen,
                        fontWeight: FontWeight.w600,
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
