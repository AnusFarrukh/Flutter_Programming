import 'package:flutter/material.dart';
import 'package:flutter_mini_project/fruits/all_fruits.dart';
import 'package:flutter_mini_project/fruits/lowprice_fruits.dart';
import 'package:flutter_mini_project/fruits/seasonal_fruits.dart';
import 'package:flutter_mini_project/screens/cart_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularFruits extends StatefulWidget {
  const PopularFruits({super.key});

  @override
  State<PopularFruits> createState() => _PopularFruitsState();
}

class _PopularFruitsState extends State<PopularFruits> {
  List cartItems = [];

  void addToCart(product) {
    setState(() {
      cartItems.add(product);
    });
  }

  void removeFromCart(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    List pages = [
      const PopularFruits(),
      const LowPriceFruits(),
      const AllFruits(),
      const SeasonalFruits(),
    ];
    List pageName = [
      'Popular',
      'Low Price',
      'All Fruits',
      'Seasonal Fruits',
    ];
    List productData = [
      {
        'price': '\$05',
        'name': 'Grapes',
      },
      {
        'price': '\$08',
        'name': 'Apples',
      },
      {
        'price': '\$10',
        'name': 'WaterMelons',
      },
      {
        'price': '\$05',
        'name': 'Bananas',
      },
    ];
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 14,
                    ),
                  ),
                  Text(
                    "Popular Fruits",
                    style: GoogleFonts.manrope(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.5,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/svg/Search.svg'),
                        const SizedBox(
                          width: 9,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 3),
                          child: SvgPicture.asset(
                            'assets/svg/bag.svg',
                            color: const Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(vertical: 10),
                width: double.infinity,
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: pages.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => pages[index],
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        height: 36,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 6),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: index == 0
                                ? const Color(0XFFF9B023)
                                : Colors.grey,
                          ),
                          color: index == 0
                              ? const Color(0XFFF9B023)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          pageName[index],
                          style: GoogleFonts.manrope(
                            color: index == 0 ? Colors.white : Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                height: MediaQuery.of(context).size.height * 0.80,
                width: double.infinity,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 10,
                  ),
                  itemCount: productData.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.all(8.0),
                      color: const Color(0XFFF8F9FB),
                      height: 160,
                      width: 100,
                      child: Column(
                        children: [
                          SvgPicture.asset('assets/svg/ImageIcon.svg'),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    addToCart(productData[index]);
                                  },
                                  child: SvgPicture.asset(
                                      'assets/svg/AddProduct.svg'),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      productData[index]['price'],
                                      style: GoogleFonts.manrope(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      productData[index]['name'],
                                      style: GoogleFonts.manrope(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0XFF616A7D),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CartScreen(
                cartItems: cartItems,
                removeFromCart: removeFromCart,
              ),
            ),
          );
        },
        backgroundColor: Colors.grey,
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
