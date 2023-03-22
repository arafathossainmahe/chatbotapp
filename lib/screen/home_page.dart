import 'package:chatbotapp/widgets/narrwowlayout.dart';
import 'package:chatbotapp/widgets/widelayout.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: const [
            Text(
              'AsiaPasific AdBot',
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'version 1.0 beta',
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.w100),
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return buildWideLayout(context);
          } else {
            return const NarrowLayout();
          }
        },
      ),
      bottomNavigationBar: Row(
        children: const [
          Text(
            'AsiaPasific Net',
            style: TextStyle(fontSize: 26),
          ),
          SizedBox(
            width: 10,
          ),
          Text('Copyright © 2023 - All right reserved')
        ],
      ),
    );
  }
}
