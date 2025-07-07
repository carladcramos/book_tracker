import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  
  Future<void> getData() async {
    //simulating a network request for a username
    String username = await Future.delayed(const Duration(seconds: 2), () {
      return 'yoshi';
    });
    //simulating a network request to get bio of the username
    String bio = await Future.delayed(const Duration(seconds: 2), () { 
      return 'statement';
    }); 

    print('${username} ${bio}');
  }


@override
  void initState() {
    super.initState();
    print('initState function ran');
  }

  @override
  Widget build(BuildContext context) {
    print('build method ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
        title: const Text('Choose a Location'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ElevatedButton( 
        onPressed: () {
          setState(() {
            getData();
          });
        },
        child: const Text('Get Data'),
      ),
    );  
  }
} 