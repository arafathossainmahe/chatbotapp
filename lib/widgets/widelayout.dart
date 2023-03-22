import 'package:chatbotapp/widgets/narrwowlayout.dart';
import 'package:flutter/material.dart';

Widget buildWideLayout(BuildContext context) {
    return Row(
      
      children: [
        Expanded(
          flex: 1,
          child: Drawer(
            child: ListView(
              children: const [
                ListTile(
                  //leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                ListTile(
                 // leading: Icon(Icons.settings),
                  title: Text('Asia Pasific Net'),
                ),
              ],
            ),
          ),
        ),
        const Expanded(
          flex: 3,
          child: NarrowLayout(),
        ),
      ],
    );
  }