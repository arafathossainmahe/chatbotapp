import 'package:chatbotapp/widgets/chatbouble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

import '../constants/chats.dart';
import '../services/api_services.dart';

class NarrowLayout extends StatefulWidget {
  const NarrowLayout({super.key});

  @override
  State<NarrowLayout> createState() => _NarrowLayoutState();
}

class _NarrowLayoutState extends State<NarrowLayout> {
  final bool isTyping = true;
  late TextEditingController textEditingController;
  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return MessageBubble(
                  msg: chatMessages[index]["msg"].toString(),
                  chatIndex: int.parse(
                    chatMessages[index]["chatIndex"].toString(),
                  ),
                );
              }

              //reverse: true,

              // MessageBubble(
              //   message: 'Hi, how can I help you?',
              //   isSent: true,
              // ),
              // Add more messages here
              ),
        ),
        const SizedBox(
          height: 10,
        ),
        if (isTyping) ...[
          const SpinKitPouringHourGlassRefined(
            color: Color(0xFFDCF8C6),
            size: 30,
          ),
        ],
        const SizedBox(
          height: 10,
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: textEditingController,
                    onSubmitted: (Value) {},
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Type a message',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: () async {
                            try {
                              await ApiService.getModels();
                            } catch (error) {
                              print("error $error");
                            }
                          },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
