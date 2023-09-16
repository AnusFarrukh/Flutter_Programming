import 'package:flutter/material.dart';
import 'package:flutter_mini_project/screens/card_screen.dart';
import 'package:flutter_svg/svg.dart';


class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Fishes",
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Center(
              child: SvgPicture.asset(
                "assets/svg/ImageIcon.svg",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Column(
                children: [
                  Container(
                    color: const Color(0xFFA9B4BC),
                    height: 500,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Fishes",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "\$90 Kg",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF2A4BA0),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Details",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w800),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo,Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo,Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Nullam quis risus eget urna mollis ornare vel eu leo.",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 180,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black,
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: const Size(180, 50),
                                ),
                                child: const Text("Add Cart"),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const CardScreen(),
                                    ),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.black,
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  minimumSize: const Size(180, 50),
                                ),
                                child: const Text("Buy Now"),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
