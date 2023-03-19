import 'package:chatbotapp/narrwowlayout.dart';
import 'package:flutter/material.dart';

Widget buildWideLayout(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Drawer(
            child: ListView(
              children: const [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: buildContent(context),
        ),
      ],
    );
  }