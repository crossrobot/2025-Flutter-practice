import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { 
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar( title: Text('앱제목'), backgroundColor: Colors.blue),
        body : Container(color: Colors.white),
        bottomNavigationBar: BottomAppBar(color: Colors.white ,
            child: Row(children: [Icon(Icons.phone), Icon(Icons.message), Icon(Icons.contact_page)], mainAxisAlignment: MainAxisAlignment.spaceAround,))
           ),
        );
  }
}