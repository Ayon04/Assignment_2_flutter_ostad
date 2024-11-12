import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyProfileScreen(),
      debugShowCheckedModeBanner: false,
    );


  }
}

class MyProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Profile'),
        backgroundColor: Colors.yellow,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileItem(
              icon: Icons.icecream,
              label: 'Ice cream is very delicious right?',
            ),
            ProfileItem(
              icon: Icons.code,
              label: 'Programming is not boring if you love it',
            ),
            ProfileItem(
              icon: Icons.egg,
              label: 'If you submit code directly copy from chatgpt then mark will 0',
            ),
          ],
        ),
      ),
    );
  }
}


class ProfileItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const ProfileItem({
    required this.icon,


    required this.label,
  });




  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 95,
            backgroundColor: Colors.purple[90],
            child: Icon(
              icon,
              size: 40,
              color: Colors.purple[10],
            ),
          ),
          SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
