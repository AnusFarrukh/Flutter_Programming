import 'package:flutter/material.dart';
import 'package:flutter_mini_project/screens/order_screen.dart';

class CartScreen extends StatefulWidget {
  final List cartItems;
  final Function(int) removeFromCart;

  CartScreen({required this.cartItems, required this.removeFromCart});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Your Items'),
        ),
        body: ListView.builder(
          itemCount: widget.cartItems.length,
          itemBuilder: (context, index) {
            final cartItem = widget.cartItems[index];
            return ListTile(
              title: Text(cartItem['name'] ?? ''),
              subtitle: Text(cartItem['price'] ?? ''),
              trailing: IconButton(
                icon: const Icon(Icons.remove_shopping_cart),
                onPressed: () {
                  setState(() {
                    widget.removeFromCart(index);
                  });
                },
              ),
            );
          },
        ),
        bottomNavigationBar: Container(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const OrderScreen()));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
            ),
            child: const Text(
              'Place Order',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
