//categorypage

import 'package:flutter/material.dart';
import 'package:flutter_mini_project/assets/colors.dart';
import 'package:flutter_mini_project/fruits/fruits_screen.dart';
import 'package:flutter_mini_project/meats/meats_screen.dart';
import 'package:flutter_mini_project/screens/third_screen.dart';
import 'package:flutter_mini_project/Fishes/fishes_screen.dart';
import 'package:flutter_mini_project/vegetables/vegetables_screen.dart';

class FifthScreen extends StatefulWidget {
  const FifthScreen({super.key});

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 250,
                color: c9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Icon(Icons.arrow_back),
                          ),
                          Container(
                            padding: const EdgeInsets.only(bottom: 10, left: 40),
                            child: const Text(
                              "Hey, User",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          const Padding(
                            padding:
                                EdgeInsets.only(bottom: 10, left: 150),
                            child: Icon(Icons.notifications),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                        padding:
                            EdgeInsets.only(top: 50, left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Shop",
                              style: TextStyle(fontSize: 40),
                            ),
                            Text(
                              "By Category",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 50),
                            ),
                          ],
                        ),),
                  ],
                ),
              ),
              Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 10, left: 15, bottom: 20, top: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FishItemScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 220,
                    width: 160,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.perm_media,
                          size: 50,
                          color: Color(0xFF616161),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(
                            color: Color(0xFF616161),
                            thickness: 1,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "Fishes",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "From Sea",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 20, top: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MeatItemScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 220,
                    width: 160,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.perm_media,
                            size: 50, color: Color(0xFF616161)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(
                            color: Color(0xFF616161),
                            thickness: 1,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "Meats",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Organic",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 10, left: 15, bottom: 20, top: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VegetableItemScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 220,
                    width: 160,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.perm_media,
                            size: 50, color: Color(0xFF616161)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(
                            color: Color(0xFF616161),
                            thickness: 1,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "Vegetables",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Organic",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 20, top: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FruitItemScreen(),
                      ),
                    );
                  },
                  child: Container(
                    height: 220,
                    width: 160,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEEEEEE),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.perm_media,
                            size: 50, color: Color(0xFF616161)),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Divider(
                            color: Color(0xFF616161),
                            thickness: 1,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "Fruits",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "Fresh & ORGANIC",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          backgroundColor: Colors.red,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ThirdScreen(),
                      ),
                    );
                  },
                  child: const Icon(Icons.home_rounded)),
            ),
            BottomNavigationBarItem(
              label: "Categories",
              icon: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FifthScreen(),
                      ),
                    );
                  },
                  child: const Icon(Icons.category_rounded)),
            ),
            const BottomNavigationBarItem(
              label: "Favourites",
              icon: Icon(Icons.favorite_outline_rounded),
            ),
            const BottomNavigationBarItem(
              label: "More",
              icon: Icon(Icons.more_vert_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
