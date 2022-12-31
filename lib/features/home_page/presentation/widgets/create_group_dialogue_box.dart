import 'package:flutter/material.dart';

class CreateGroupDialogueBox extends StatefulWidget {
  const CreateGroupDialogueBox(this.isLoading, this.groupName, {super.key});
  final bool isLoading;
  final Function(String) groupName;
  @override
  State<CreateGroupDialogueBox> createState() => _CreateGroupDialogueBoxState();
}

class _CreateGroupDialogueBoxState extends State<CreateGroupDialogueBox> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        widget.isLoading == true
            ? Center(
                child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor),
              )
            : TextField(
                onChanged: (val) {
                  setState(() {
                    widget.groupName.call(val);
                  });
                },
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(20)),
                    errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(20))),
              ),
      ],
    );
  }
}
