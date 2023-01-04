import 'package:chat_app/features/components/search_bar.dart';
import 'package:chat_app/features/group_page/data/models/search_tile_model/search_tile_model.dart';
import 'package:chat_app/features/group_page/presentation/logic/search_cubit/search_cubit.dart';
import 'package:chat_app/features/group_page/presentation/widgets/search_group_tile.dart';
import 'package:chat_app/helper/constant.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupSearchBar extends StatelessWidget {
  const GroupSearchBar({super.key});
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: BlocBuilder<SearchCubit, QuerySnapshot?>(
        builder: (context, state) {
          final cubit = context.read<SearchCubit>();
          bool check = state != null && state.docs.isNotEmpty;
          return SearchBar(
            onSearch: (data) => cubit.getSearchedGroup(data),
            list: Material(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                constraints: const BoxConstraints(
                  maxHeight: 200,
                  minHeight: 50,
                ),
                width: double.infinity,
                decoration: kRoundedBottomContainer,
                child: check
                    ? ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.docs.length,
                        itemBuilder: (context, index) {
                          var ss = state.docs[index];
                          SearchTileModel data = SearchTileModel(
                            userName: cubit.userName ?? '',
                            groupId: ss['groupId'],
                            groupName: ss['groupName'],
                            adminName: ss['admin'],
                          );
                          return SearchGroupTile(data);
                        },
                      )
                    : Text('No Data', style: theme.textTheme.bodyLarge),
              ),
            ),
          );
        },
      ),
    );
  }
}
