import 'package:flutter/material.dart';

import 'custom_image.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.trailing,
    this.profilePic,
    this.isThreeLine = false,
    this.onTap,
  });
  final String title;
  final String? subtitle;
  final String? profilePic;
  final bool isThreeLine;
  final String? trailing;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      isThreeLine: isThreeLine,
      onTap: onTap,
      contentPadding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.grey.shade400,
        child: profilePic != null && profilePic != ""
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
        subtitle ?? '',
        style: const TextStyle(fontSize: 14),
      ),
      trailing: Text(
        trailing ?? '',
        style: const TextStyle(color: Colors.blueGrey),
      ),
    );
  }
}
