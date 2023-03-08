import 'package:ezsplit/utils/colors.dart';
import 'package:ezsplit/widgets/appBarCustom.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarCustom(title: 'PNM'),
      backgroundColor: bgColor,
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
                  color: primary,
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
          }),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.view_agenda), 
            label: 'Overview',
            ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add), 
          label: ''),
        BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded), 
            label: 'Expenses'),
      ],
      selectedItemColor: primary,
      unselectedItemColor: highlight,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: accent,
      ),
      drawer: const Drawer(
        child: Icon(Icons.add),
      ),
    );
  }
}
