import 'package:chat_app/features/components/custom_button.dart';
import 'package:chat_app/features/group_chat_page/presentation/pages/group_chat_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../helper/helper_function.dart';
import '../../../components/widgets.dart';
import '../../../group_chat_page/data/models/group_model/group_model.dart';
import '../../../group_page/data/models/search_tile_model/search_tile_model.dart';
import '../logic/search_tile_cubit/search_tile_cubit.dart';

class SearchGroupTile extends StatelessWidget {
  const SearchGroupTile(this.data, {super.key});
  final SearchTileModel data;
  @override
  Widget build(BuildContext context) {
  print('11--------$data');
    GroupModel groupData = GroupModel(
      groupId: data.groupId,
      groupName: data.groupName,
      userName: data.userName,
    );
    return BlocProvider(
      create: (context) => SearchTileCubit(data),
      child: BlocBuilder<SearchTileCubit, SearchTileState>(
        builder: (context, state) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: ListTile(
              dense: true,
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Theme.of(context).primaryColor,
                child: Text(
                  data.groupName.substring(0, 1).toUpperCase(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text(
                data.groupName,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle:
                  Text("Admin: ${HelperFunction.getName(data.adminName)}"),
              trailing: state.when(
                  loading: () => const CustomButton(width: 60),
                  success: (isJoined) {
                    onPressed() async {
                      context.read<SearchTileCubit>().toggleGroupJoin();
                      if (isJoined) {
                        showSnackbar(
                          context,
                          Colors.green,
                          "Successfully joined he group",
                        );
                        Future.delayed(const Duration(seconds: 1), () {
                          nextScreen(context, GroupChatPage(groupData));
                        });
                      } else {
                        showSnackbar(
                          context,
                          Colors.red,
                          "Left the group ${data.groupName}",
                        );
                      }
                    }

                    return CustomButton(
                      width: 60,
                      buttonColor: Theme.of(context).primaryColor,
                      onTap: onPressed,
                      text: isJoined ? 'Joined' : 'Join Now',
                    );
                  }),
            ),
          );
        },
      ),
    );
  }
}
