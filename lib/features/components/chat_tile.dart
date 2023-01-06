import 'package:flutter/material.dart';

import 'custom_image.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.title,
    required this.userName,
    this.profilePic,
    this.onTap,
  });
  final String title, userName;
  final String? profilePic;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(vertical: 12),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Theme.of(context).primaryColor,
        child: profilePic != null
            ? ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: CustomImage(
                  height: 60,
                  width: 60,
                  networkImage: profilePic,
                ),
              )
            : Text(
                title.substring(0, 1).toUpperCase(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        "Join the conversation as $userName",
        style: const TextStyle(fontSize: 13),
      ),
    );
  }
}
