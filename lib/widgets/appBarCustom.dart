import 'package:flutter/material.dart';
import 'package:ezsplit/utils/colors.dart';

class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {
  final String? title;
  const AppBarCustom({super.key, this.title});

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();

  @override
  final Size preferredSize = const Size.fromHeight(50.0);
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Center(child: Text('${widget.title}')),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              print('appbar button pressed');
          }, 
          icon: const Icon(Icons.send)
          )
        ],
        backgroundColor: primary,
    );
  }
}
