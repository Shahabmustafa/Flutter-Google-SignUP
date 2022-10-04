import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              backgroundImage: NetworkImage('${user?.photoURL}'),
              radius: 60.0,
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text('${user?.displayName}',
          style: TextStyle(
            fontSize: 20.0
          ),)
        ],
      ),
    );
  }
}
