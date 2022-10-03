import 'package:flutter/material.dart';
import 'package:flutter_fronted_practis/view/auth/splash_server.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServer SplashScreen = SplashServer();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashScreen.isLogin(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('images/kitoob.jpeg',
            height: 250.0,),
          ),
        ],
      ),
    );
  }
}