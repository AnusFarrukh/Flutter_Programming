import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        title: const Text(
          "Whatsapp ChatTile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            ListTile(
              tileColor: Colors.blueGrey,
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue,
              ),
              title: Text("Anus Farrukh"),
              subtitle: Text("Hello"),
              trailing: Text("8:00 am"),
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              tileColor: Colors.blueGrey,
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue,
              ),
              title: Text("Furqan"),
              subtitle: Text("kahan ho"),
              trailing: Text("9:00 am"),
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              tileColor: Colors.blueGrey,
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue,
              ),
              title: Text("Khan"),
              subtitle: Text("hm"),
              trailing: Text("10:00 am"),
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              tileColor: Colors.blueGrey,
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue,
              ),
              title: Text("Bhai"),
              subtitle: Text("kya haal hain"),
              trailing: Text("12:00 am"),
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              tileColor: Colors.blueGrey,
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue,
              ),
              title: Text("Bro"),
              subtitle: Text("Hey"),
              trailing: Text("1:00 pm"),
            ),
            SizedBox(
              height: 2,
            ),
            ListTile(
              tileColor: Colors.blueGrey,
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.blue,
              ),
              title: Text("Unknown"),
              subtitle: Text("Assalamualaikum"),
              trailing: Text("92:00 pm"),
            ),
            SizedBox(
              height: 2,
            ),
          ],
        ),
      ),
    );
  }
}
