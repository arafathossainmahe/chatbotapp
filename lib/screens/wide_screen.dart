import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../constants/constants.dart';
import 'chat_screen.dart';

Widget buildWideLayout(BuildContext context) {
  final Uri _url = Uri.parse('https://asiapacific.com.my/index.html');
  Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
  return Scaffold(
    backgroundColor: scaffoldBackgroundColor,
    body: Row(
      children: [
        Expanded(
          flex: 1,
          child: Drawer(
            backgroundColor: scaffoldBackgroundColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(
                            'assets/images/Logo2.png',
                          ),
                        ),
                        const Text(
                          'AsiaPasific AdBot',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: _launchUrl,
                  child: Container(
                    margin: const EdgeInsets.only(left: 10),
                    height: 30,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      //color: Colors.white.withOpacity(.2)
                    ),
                    child: Row(
                      children: const [
                        Image(
                          image: AssetImage('assets/images/home.png'),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                // InkWell(
                //   onTap: () {},
                //   child: Container(
                //     margin: EdgeInsets.only(left: 10),
                //     height: 30,
                //     width: double.maxFinite,
                //     decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(15),
                //         //color: Colors.white.withOpacity(.2)
                //         ),
                //     child:const Text(
                //       'Asia Pasific Net',
                //       style: TextStyle(color: Colors.white),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
        const Expanded(
          flex: 3,
          child: ChatScreen(),
        ),
        Expanded(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.only(top: 15, right: 15, bottom: 15),
            height: double.maxFinite,
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.9),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: const Image(
                      image: AssetImage('assets/images/logo3.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(.1)),
                    child: const ListTile(
                      title: Text('Web Development'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(.1)),
                    child: const ListTile(
                      title: Text('Digital Marketing'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(.1)),
                    child: const ListTile(
                      title: Text('Cloud Hosting'),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(.1)),
                    child: const ListTile(
                      title: Text('Web/Email Hosting'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
