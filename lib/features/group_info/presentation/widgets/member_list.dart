import 'package:flutter/material.dart';
import '../../../../helper/helper_function.dart';

class MemberList extends StatelessWidget {
  const MemberList(this.members, {super.key});
  final Stream members;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: members,
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          bool hasData = snapshot.data != null &&
              snapshot.data['members'] != null &&
              snapshot.data['members'].length != 0;
          if (hasData) {
            return ListView.builder(
              itemCount: snapshot.data['members'].length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundColor: Theme.of(context).primaryColor,
                      child: Text(
                        HelperFunction.getName(snapshot.data['members'][index])
                            .substring(0, 1)
                            .toUpperCase(),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    title: Text(HelperFunction.getName(
                        snapshot.data['members'][index])),
                    subtitle: Text(
                        HelperFunction.getId(snapshot.data['members'][index])),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: Text("NO MEMBERS"),
            );
          }
        } else {
          return Center(
              child: CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
          ));
        }
      },
    );
  }
}
