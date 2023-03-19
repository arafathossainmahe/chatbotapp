import 'package:chatbotapp/chatbouble.dart';
import 'package:flutter/material.dart';

Widget buildNarrowLayout(BuildContext context) {
  return buildContent(context);
}

Widget buildContent(BuildContext context) {
  return Column(
    children: [
      Expanded(
        child: ListView(
          reverse: true,
          children: const [
            MessageBubble(
              message: 'Hello there!',
              isSent: false,
            ),
            MessageBubble(
              message: 'Hi, how can I help you?',
              isSent: true,
            ),
            // Add more messages here
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 5,
              offset: const Offset(0, -3),
            ),
          ],
        ),
        child: Row(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Type a message',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.send),
              onPressed: () {},
            ),
          ],
        ),
      ),
    ],
  );
}
