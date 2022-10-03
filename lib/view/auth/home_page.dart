import 'package:flutter/material.dart';
import 'package:flutter_fronted_practis/view/auth/auth.dart';
import 'package:flutter_fronted_practis/view/auth/login_page.dart';
import 'package:google_sign_in/google_sign_in.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage('$photoURL'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Center(child: Text('$displayName')),
          ],
        ),
        actions: [
          Row(
            children: [
              ElevatedButton(onPressed: ()async{
                await GoogleSignIn().signOut();
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
              }, child: Icon(Icons.logout))
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [

             ],
           ),
          ],
        ),
      ),
    );
  }
}
