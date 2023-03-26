
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'chat_screen.dart';

Widget buildWideLayout(BuildContext context) {
  return Scaffold(
    backgroundColor: scaffoldBackgroundColor,
    body: Row(
      children: [
        Expanded(
          flex: 1,
          child: Drawer(
            backgroundColor: smsSend,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color:  smsReceived,
                    borderRadius:  const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                  ),
                  height:100,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'AsiaPasific AdBot',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 26),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('version 2.0 beta')
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    margin:const EdgeInsets.only(left: 10,right: 10,bottom: 5),
                    height: 54,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color:smsReceived,
                        borderRadius: BorderRadius.circular(10)),
                    child:const Center(child: Text('Home')),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    margin:const EdgeInsets.only(left: 10,right: 10),
                    height: 54,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color:smsReceived,
                        borderRadius: BorderRadius.circular(10)),
                    child:const Center(child: Text('Asia Pasific Net')),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Expanded(
          flex: 3,
          child: ChatScreen(),
        ),
      ],
    ),
  );
}
