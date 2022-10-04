import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DiaryScreen extends StatefulWidget {
  const DiaryScreen({Key? key}) : super(key: key);

  @override
  State<DiaryScreen> createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text('Name: ${user!.displayName}'),
              ],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          DataTable(
              columns: const [
                DataColumn(
                        label: Text('Subject')),
                DataColumn(
                        label: Text('Description')),
          ],
              rows: const [
                DataRow(cells: [
                  DataCell(
                      Text('English'),
                  ),
                  DataCell(
                      Text(""),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(
                      Text('Urdu'),
                  ),
                  DataCell(
                      Text(""),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(
                      Text('Maths'),
                  ),
                  DataCell(
                      Text(""),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(
                    Text('Pak-Study'),
                  ),
                  DataCell(
                    Text(""),
                  ),
                ]),
                DataRow(cells: [
                  DataCell(
                    Text('Islamyait'),
                  ),
                  DataCell(
                    Text(""),
                  ),
                ]),
              ]),
          Column(
            children: [
              TextButton(onPressed: (){}, child: Text('Diary Print'))
            ],
          )
        ],
      ),
    );
  }
}
