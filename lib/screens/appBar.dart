
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import '../constants/constants.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  MyAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    return (kIsWeb)
        ? const SizedBox.shrink()
        : AppBar(
            backgroundColor: smsReceived,
            title: Text(title),
            actions: [
              PopupMenuButton(
                itemBuilder: (BuildContext context) => [
                  const PopupMenuItem(
                    child: Text('Home'),
                  ),
                  const PopupMenuItem(
                    child: Text('Asia Pasific Net'),
                  )
                ],
              ),
            ],
          );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
