import 'package:flutter/material.dart';
import 'package:flutter_mini_project/vegetables/all_vegetables.dart';
import 'package:flutter_mini_project/vegetables/lowprice_vegetables.dart';
import 'package:flutter_mini_project/vegetables/popular_vegetables.dart';

class SeasonalVegetables extends StatelessWidget {
  const SeasonalVegetables({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        size: 25,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 35,
                      top: 10,
                    ),
                    child: Text(
                      "Seasonal Vegetables",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 5,
                      top: 10,
                    ),
                    child: Icon(Icons.search),
                  ),
                  const SizedBox(
                    width: 9,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 8, top: 10),
                    child: Icon(Icons.notifications),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PopularVegetables(),
                          ),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                          child: Text(
                            "Popular",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LowPriceVegetables(),
                          ),
                        );
                      },
                      child: Container(
                        width: 110,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                          child: Text(
                            "LowPrice",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AllVegetables(),
                          ),
                        );
                      },
                      child: Container(
                        width: 50,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                          child: Text(
                            "All",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SeasonalVegetables(),
                          ),
                        );
                      },
                      child: Container(
                        width: 110,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1),
                            borderRadius: BorderRadius.circular(50)),
                        child: const Center(
                          child: Text(
                            "Seasonal",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const Center(
                child: Text("No Items Available"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
