// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:url_launcher/url_launcher.dart';

import '../constants/constants.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Uri _url = Uri.parse('https://asiapacific.com.my/index.html');
  Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

  
   MyAppBar({required this.title});

  @override
  Widget build(BuildContext context) {
    
    return (kIsWeb)
        ? const SizedBox.shrink()
        : AppBar(
            backgroundColor: scaffoldBackgroundColor,
            title: Text(title),
            actions: [
              TextButton(onPressed: _launchUrl, child: Text('Home'),)
              // PopupMenuButton(
              //   itemBuilder: (BuildContext context) => [
              //     const PopupMenuItem(
              //       child: Text('Home'),
              //     ),
              //     const PopupMenuItem(
              //       child: Text('Asia Pasific Net'),
              //     )
              //   ],
              // ),
            ],
          );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
