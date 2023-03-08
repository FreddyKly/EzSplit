import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Color.fromARGB(255, 12, 153, 153), 
        title: const Text('EzSplit')),
        backgroundColor: Color.fromARGB(255, 20, 20, 20),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Center(
                child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Container(
                    child: const Text('This is a body'),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    color: Color.fromARGB(255, 17, 110, 163),
                  ),
                ),
              ),
            ),
            Icon(Icons.leaderboard)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('pressed');
          }
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: ''
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.table_bar),
                label: 'Expenses'
              ) 
              ]
            ),
            drawer: Drawer(
              child: Icon(Icons.add),
            ),
      )
    );
  }
}