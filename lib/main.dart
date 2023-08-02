import 'package:flutter/material.dart';
import 'package:meals_app/dummy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DrawerExample(),
    );
  }
}

class DrawerExample extends StatelessWidget {
  const DrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    List<DummyData> myData = [
      DummyData("Hello", "Hi", "By"),
      DummyData("Hello", "Hi", "By"),
      DummyData("Hello", "Hi", "By"),
      DummyData("Hello", "Hi", "By"),
      DummyData("Hello", "Hi", "By"),
      DummyData("Hello", "Hi", "By"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer app"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.cyan,
        child: Column(
          children: [
            Container(
              color: Colors.blueAccent,
              width: double.infinity,
              child: const DrawerHeader(
                child: Text('Hello DrawerHeader'),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: myData.length,
                itemBuilder: (context, index) {
                  final itemList = myData[index];
                  return ListTile(
                    title: Text(
                      itemList.title,
                    ),
                    leading: Text(itemList.leadingTitle),
                    trailing: Text(itemList.tralingTitle),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ListView.builder(
// itemCount: myData.length,
// itemBuilder: (context, index) {
// final itemList = myData[index];
// return ListTile(
// title: Text(
// itemList.title,
// ),
// leading: Text(itemList.leadingTitle),
// trailing: Text(itemList.tralingTitle),
// );
// },
// ),
