import 'package:flutter/material.dart';

class Call {
  final String name;
  final String time;
  final String avatarUrl;
  final bool isMissed;

  Call({
    required this.name,
    required this.time,
    required this.avatarUrl,
    required this.isMissed,
  });
}

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aramalar'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: fakeCalls.length,
        itemBuilder: (context, index) {
          final call = fakeCalls[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(call.avatarUrl),
            ),
            title: Text(
              call.isMissed ? '${call.name}' : '${call.name}',
              style: TextStyle(
                fontWeight: call.isMissed ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            subtitle: Row(
              children: [
                Icon(call.isMissed ? Icons.call_missed : Icons.call_received),
                const SizedBox(width: 5),
                Text(call.time),
              ],
            ),
            trailing: IconButton(
              icon: const Icon(Icons.call),
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }
}

List<Call> fakeCalls = [
  Call(
    name: 'Ablam',
    time: '15:30',
    avatarUrl:
        "https://www.wpdurum.com/uploads/thumbs/kadin-ve-tavsan-profil-foto.jpg",
    isMissed: true,
  ),
  Call(
    name: 'Nazlı',
    time: '12:45',
    avatarUrl:
        "https://www.wpdurum.com/uploads/thumbs/bayan-profil-resmi-indir-gece.jpg",
    isMissed: true,
  ),
];
