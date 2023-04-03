import 'package:ezsplit/screens/NewExpenseScreen.dart';
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
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: primary,
          foregroundColor: bgColor,
          child: Icon(Icons.add),
          onPressed: () {
            print('pressed');
          }),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: accent,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(icon: Icon(Icons.view_agenda), onPressed: () {
                navigateToNewExpensePage(context);
                }),
              SizedBox(width: 40), // The dummy child
              IconButton(icon: Icon(Icons.list_alt_rounded), onPressed: () {}),
            ],
          ),
        // items: const [
        //   BottomNavigationBarItem(
        //     icon: Icon(Icons.view_agenda),
        //     label: 'Overview',
        //   ),
        //   BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
        //   BottomNavigationBarItem(
        //       icon: Icon(Icons.list_alt_rounded), label: 'Expenses'),
        // ],
        // selectedItemColor: primary,
        // unselectedItemColor: highlight,
        // backgroundColor: accent,
      ),
      drawer: const Drawer(
        child: Icon(Icons.add),
      ),
    );
  }

  void navigateToNewExpensePage(BuildContext context) {
    final route = MaterialPageRoute(
      builder: (context) => const NewExpensePage()
    );
    Navigator.push(context, route);
  }
}
