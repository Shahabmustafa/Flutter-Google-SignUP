import 'package:flutter/material.dart';
import 'package:flutter_fronted_practis/widget/round_button.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            RoundButoon(onTap: (){}, title: 'ADD DATA')
        ],
      ),
    );
  }
}
