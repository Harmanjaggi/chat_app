import 'package:flutter/material.dart';

class ChatTextFeild extends StatelessWidget {
  const ChatTextFeild(this.onSendMessage, {super.key});
  final void Function(String data) onSendMessage;
  @override
  Widget build(BuildContext context) {
    TextEditingController messageController = TextEditingController();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      width: double.infinity,
      color: Colors.grey[700],
      child: Row(children: [
        Expanded(
            child: TextFormField(
          controller: messageController,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(
            hintText: "Send a message...",
            hintStyle: TextStyle(color: Colors.white, fontSize: 16),
            border: InputBorder.none,
          ),
        )),
        const SizedBox(width: 12),
        GestureDetector(
          onTap: () {
            onSendMessage(messageController.text);
            messageController.clear();
          },
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Center(
              child: Icon(Icons.send, color: Colors.white),
            ),
          ),
        )
      ]),
    );
  }
}
