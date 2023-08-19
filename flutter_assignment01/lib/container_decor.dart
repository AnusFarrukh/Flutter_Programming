import 'package:flutter/material.dart';
import 'package:flutter_assignment01/chat_tiles.dart';

class ContainerDecoration extends StatelessWidget {
  const ContainerDecoration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          "Container Decoration",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        toolbarHeight: 40,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Row(
            children: [
              GestureDetector(
                onTap: () {                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatTile()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  margin: const EdgeInsets.only(left: 8),
                  height: 100,
                  width: 100,
                  child: const Text(
                    "Whatsapp Chat,Tiles",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TextFieldScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.yellow,
                  ),
                  height: 100,
                  width: 100,
                  child: const Text(
                    "TextField",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => IconsScreen()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  height: 100,
                  width: 100,
                  child: const Text(
                    "Icons",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat Screen"),
      ),
      body: Center(
        child: Text("Chat Screen Content"),
      ),
    );
  }
}

class TextFieldScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Screen"),
      ),
      body: Center(
        child: Text("TextField Screen Content"),
      ),
    );
  }
}

class IconsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icons Screen"),
      ),
      body: Center(
        child: Text("Icons Screen Content"),
      ),
    );
  }
}
