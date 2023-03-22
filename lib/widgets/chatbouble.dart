import 'package:flutter/material.dart';

import '../constants/chats.dart';
import 'textwidget.dart';

class MessageBubble extends StatelessWidget {
  final String msg;
  final int chatIndex;

  const MessageBubble({
    Key? key,
    required this.msg,
    required this.chatIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Column(
      children: [
        Material(
          color: chatIndex == 0 ? scaffoldBackgroundColor : cardColor,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                
                Expanded(
                  child: TextWidget(
                    label: msg,
                  ),
                ),
                // chatIndex == 0
                //     ? const SizedBox.shrink()
                //     : Row(
                //         mainAxisAlignment: MainAxisAlignment.end,
                //         mainAxisSize: MainAxisSize.min,
                //         children: const [
                //           Icon(
                //             Icons.thumb_up_alt_outlined,
                //             color: Colors.white,
                //           ),
                //           SizedBox(
                //             width: 5,
                //           ),
                //           Icon(Icons.thumb_down_alt_outlined,
                //               color: Colors.white)
                //         ],
                //       ),
              ],
            ),
          ),
        ),
      ],
    );
    
    
  
    // Container(
    //   margin:const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    //   padding:const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
    //   decoration: BoxDecoration(
    //     color: isSent ? const Color(0xFFDCF8C6) : Colors.white,
    //     borderRadius: BorderRadius.circular(12),
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.grey.withOpacity(0.5),
    //         blurRadius: 5,
    //         offset:const Offset(0, 3),
    //       ),
    //     ],
    //   ),
    //   child: Text(
    //     msg,
    //     style:const TextStyle(fontSize: 16),
    //   ),
    // );
  }
}