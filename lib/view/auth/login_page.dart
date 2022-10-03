import 'package:flutter/material.dart';
import 'package:flutter_fronted_practis/view/auth/auth.dart';
import 'package:flutter_fronted_practis/view/auth/home_page.dart';
import 'package:flutter_social_button/flutter_social_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset('images/kitoob.jpeg',
          height: 250.0,),
          FlutterSocialButton(
            onTap: ()async{
              await signInWithGoogle(context);
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            buttonType: ButtonType.google,
          ),
        ],
      ),
    );
  }
}
