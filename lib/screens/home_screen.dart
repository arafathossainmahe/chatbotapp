
import 'package:chatbotapp/screens/wide_screen.dart';
import 'package:flutter/material.dart';

import 'appBar.dart';
import 'chat_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: const Color(0xff070b3b),
      //   title: Row(
      //     children: const [
      //       Text(
      //         'AsiaPasific AdBot',
      //         style: TextStyle(
      //             fontSize: 26,
      //             color: Colors.white,
      //             fontWeight: FontWeight.bold),
      //       ),
      //       SizedBox(
      //         width: 10,
      //       ),
      //       Text(
      //         'version 2.0 beta',
      //         style: TextStyle(
      //             fontSize: 22,
      //             color: Colors.white,
      //             fontWeight: FontWeight.w100),
      //       ),
      //     ],
      //   ),
      // ),
      appBar:MyAppBar(title: 'AsiaPasific AdBot') ,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return buildWideLayout(context);
          } else {
            return const ChatScreen();
          }
        },
      ),
      // bottomNavigationBar: Row(
      //   children: const [
      //     Flexible(
      //       child: Image(height: 50,
      //         image: AssetImage('assets/images/logo.jpg'),
      //       ),
      //     ),
      //     SizedBox(
      //       width: 10,
      //     ),
      //     Text('Copyright © 2023 - All right reserved')
      //   ],
      // ),
    );
  }
}
