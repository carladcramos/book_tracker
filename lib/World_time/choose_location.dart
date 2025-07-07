import 'package:flutter/material.dart';
import 'services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  final   List<WorldTime> locations = [
    WorldTime(url: 'Europe/London', location: 'London', flag: 'https://flagcdn.com/w40/gb.png'),
    WorldTime(url: 'Europe/Athens', location: 'Athens', flag: 'https://flagcdn.com/w40/gr.png'),
    WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'https://flagcdn.com/w40/eg.png'),
    WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'https://flagcdn.com/w40/ke.png'),
    WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'https://flagcdn.com/w40/us.png'),
    WorldTime(url: 'America/New_York', location: 'New York', flag: 'https://flagcdn.com/w40/us.png'),
    WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'https://flagcdn.com/w40/kr.png'),
    WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'https://flagcdn.com/w40/id.png'),
  ];

  Future<void> updateTime(int index) async {
    WorldTime instance = locations[index];
    await instance.getTime();

    if (!mounted) return;

    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
      'flag': instance.flag,
      'isDaytime': instance.isDaytime,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        title: const Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () => updateTime(index),
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(locations[index].flag),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
