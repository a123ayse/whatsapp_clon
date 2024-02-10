import 'package:flutter/material.dart';
import 'package:whatsapp_clon/screens/Call_screen.dart';
import 'package:whatsapp_clon/screens/Chat_sreen.dart';
import 'package:whatsapp_clon/screens/Status_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff075E54),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.white,
          labelColor: Colors.white,
          tabs: const [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(text: 'Sohbetler'),
            Tab(text: 'Durum'),
            Tab(text: 'Aramalar'),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: const Icon(Icons.search, color: Colors.white),
          ),
          Container(
            margin: const EdgeInsets.only(right: 16.0),
            child: const Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(
              child: Text(
            "Kamera",
            style: TextStyle(fontSize: 25),
          )),
          Chatscreen(),
          StatusScreen(),
          CallScreen(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff075E54),
        foregroundColor: Colors.white,
        child: const Icon(Icons.message),
        onPressed: () => print("Button clicked"),
      ),
    );
  }
}
