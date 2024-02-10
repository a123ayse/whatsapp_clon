import 'package:flutter/material.dart';
import 'package:whatsapp_clon/screens/Chat.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<StatefulWidget> createState() => ChatscreenState();
}

class ChatscreenState extends State {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: fakeData.length,
      itemBuilder: (context, i) => Column(
        children: [
          const Divider(
            height: 10.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(fakeData[i].avatarUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  fakeData[i].name,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  fakeData[i].time,
                  style: const TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
              ],
            ),
            subtitle: Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: Text(
                fakeData[i].message,
                style: const TextStyle(fontSize: 14.0, color: Colors.grey),
              ),
            ),
          )
        ],
      ),
    );
  }
}
