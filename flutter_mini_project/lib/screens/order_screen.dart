import 'package:flutter/material.dart';
import 'package:flutter_mini_project/screens/card_screen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Placing Order",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
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
        
        body: Center(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 150,top: 50),
                child: Text("Delivery Address",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
              ),
              const SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  height: 100,
                  width: 320,
                  child: const Padding(
                    padding: EdgeInsets.only(
                      top: 20,
                      left: 20,
                      right: 20,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Home Address",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                height: 100,
                width: 320,
                child: const Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                    left: 20,
                    right: 20,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Office Address",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CardScreen()));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            child: const Text(
              'Add Card',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
