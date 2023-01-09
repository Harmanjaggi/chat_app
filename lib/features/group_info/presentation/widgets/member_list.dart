import 'package:chat_app/features/group_info/presentation/logic/member_cubit/member_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                return MemberTile(
                  uid: HelperFunction.getId(snapshot.data['members'][index]),
                  userName:
                      HelperFunction.getName(snapshot.data['members'][index]),
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

class MemberTile extends StatelessWidget {
  const MemberTile({super.key, required this.userName, required this.uid});
  final String userName;
  final String uid;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MemberCubit(uid),
      child: BlocBuilder<MemberCubit, MemberState>(
        builder: (context, state) {
          bool check = state.type != null && state.type != "";
          String type = check ? state.type! : "NA";
          return ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey.shade400,
              child: Text(
                userName.substring(0, 1).toUpperCase(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
            title: Text(userName),
            subtitle: Text(state.email ?? ''),
            trailing: Text("Type: $type"),
          );
        },
      ),
    );
  }
}
