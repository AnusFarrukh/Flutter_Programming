import 'package:flutter/material.dart';
import 'package:flutter_mini_project/screens/orderlast_screen.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Add Card Payment",
            style: TextStyle(
                color: Colors.black,  fontSize: 30),
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
            const SizedBox(height: 50,),
               const Padding(
                 padding: EdgeInsets.only(right: 200),
                 child: Text("Card Holder Name"),
               ),
            
            Container(
              child: const Padding(
                padding: EdgeInsets.only(left: 40,right: 40),
                child: TextField(),
              ),
            ),
            const SizedBox(height: 40,),
              const Padding(
                 padding: EdgeInsets.only(right: 230),
                 child: Text("Card Number"),
               ),
            
            Container(
              child: const Padding(
                padding: EdgeInsets.only(left: 40,right: 40),
                child: TextField(),
              ),
            ),
 const SizedBox(height: 40,),
              const Padding(
                 padding: EdgeInsets.only(right: 250),
                 child: Text("Exp Date"),
               ),
            
            Container(
              child: const Padding(
                padding: EdgeInsets.only(left: 40,right: 40),
                child: TextField(),
              ),
            ),      
          const SizedBox(height: 40,),
              const Padding(
                 padding: EdgeInsets.only(right: 270),
                 child: Text("Cvc"),
               ),
            
            Container(
              child: const Padding(
                padding: EdgeInsets.only(left: 40,right: 40),
                child: TextField(),
              ),
            ),      
          ],
        ),
         bottomNavigationBar: Container(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OrderLastScreen()));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            child: const Text(
              'Make Payment',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
      ),
    ),);
  }
}
