import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:orderit/presentation/components/widgets/custom_text.dart';
import 'package:orderit/presentation/screens/home/home_controller/home_controller.dart';
import 'package:orderit/data/product_data.dart';
import 'package:orderit/presentation/screens/home/widgets/home_products.dart';
import 'package:orderit/presentation/screens/home/widgets/search_delegate.dart';
import 'package:orderit/presentation/screens/home/widgets/slider_home_images.dart';
import 'package:orderit/presentation/theme/theme/constants/colors.dart';
import 'package:orderit/presentation/theme/theme/constants/image_strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> banners = [
    const SliderHomeImages(
      image: OrderitImages.productImage3,
    ),
    const SliderHomeImages(
      image: OrderitImages.productImage2,
    ),
    const SliderHomeImages(
      image: OrderitImages.productImage1,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: SingleChildScrollView(
            child: Stack(
              children: [
                Column(
                  children: [
                    Column(children: [
                      const HomeSearchBar(),
                      const SizedBox(
                        height: 20,
                      ),
                      CarouselSlider(
                        options: CarouselOptions(
                          onPageChanged: (index, _) =>
                              controller.updatePageIndicator(index),
                          viewportFraction: 1,
                        ),
                        items: banners,
                      ),
                      Obx(
                        () => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < 3; i++)
                              Container(
                                margin: const EdgeInsets.only(right: 5),
                                height: 7,
                                width: 7,
                                decoration: BoxDecoration(
                                  color:
                                      controller.carouselCurrentIndex.value == i
                                          ? OrderitColors.greenBackground
                                          : OrderitColors.light,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomText(
                              text: 'Special Offers',
                              color: OrderitColors.dark,
                              size: 22,
                              fontWeight: FontWeight.bold),
                          GestureDetector(
                            onTap: () {},
                            child: const CustomText(
                                text: 'See more',
                                color: OrderitColors.textGreen,
                                size: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ]),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: 500,
                        child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 15,
                              mainAxisExtent: 190,
                            ),
                            itemCount: Product.products.length,
                            itemBuilder: (BuildContext context, int index) {
                              return HomeProductsList(index: index);
                            }),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
