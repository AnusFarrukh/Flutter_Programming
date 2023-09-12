import 'package:flutter/material.dart';
import 'package:flutter_mini_project/assets/colors.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              color: c6,
              child: Padding(
                padding: const EdgeInsets.only(top: 400),
                child: Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    color: c5,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
