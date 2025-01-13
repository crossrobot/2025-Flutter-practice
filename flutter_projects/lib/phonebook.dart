import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var names = ['NJ', 'KH', 'TH', 'JYJ'];
  var likes = [0, 0, 0, 0];
  var idx = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Phonebook')),
        body: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, i) {
            return ListTile(
              leading: Image.asset(
                'phonebook_images/p${idx + i}.jpg',
                height: 30,
                width: 30,
              ),
              title: Text(names[i]),
              trailing: ElevatedButton(
                onPressed: () {
                  setState(() {
                    likes[i] += 1;
                  });
                },
                child: Text('Like: ${likes[i]}'),
              ),
            );
          },
        ),
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Bottom Navigation Placeholder'),
          ),
        ),
      ),
    );
  }
}
