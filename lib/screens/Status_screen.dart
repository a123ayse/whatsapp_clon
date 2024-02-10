import 'package:flutter/material.dart';

class Status {
  final String name;
  final String time;
  final String avatarUrl;
  final bool isMissed;

  Status({
    required this.name,
    required this.time,
    required this.avatarUrl,
    required this.isMissed,
  });
}

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Durumlar'),
      ),
      body: ListView.builder(
        itemCount: fakeStatuses.length,
        itemBuilder: (context, index) {
          final status = fakeStatuses[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(status.avatarUrl),
            ),
            title: Text(status.name),
            subtitle: Text(status.time),
            trailing: const Icon(Icons.more_horiz),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}

List<Status> fakeStatuses = [
  Status(
    name: 'Ahmet',
    time: '15:30',
    avatarUrl: 'https://placekitten.com/200/200',
    isMissed: true,
  ),
  Status(
    name: 'Nazlı',
    time: '12:45',
    avatarUrl:
        "https://www.wpdurum.com/uploads/thumbs/bayan-profil-resmi-indir-gece.jpg",
    isMissed: true,
  ),
];
