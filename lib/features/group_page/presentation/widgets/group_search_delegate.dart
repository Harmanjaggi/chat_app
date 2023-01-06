import 'package:chat_app/features/group_page/presentation/logic/search_group_cubit/search_group_cubit.dart';
import 'package:chat_app/features/group_page/presentation/widgets/search_group_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class GroupSearchDelegate extends SearchDelegate {
  final SearchGroupCubit blocContext;
  GroupSearchDelegate(this.blocContext);
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          blocContext.getSearchedGroup(query);
        },
        icon: const Icon(Icons.search, size: 30),
      ),
      IconButton(
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
        icon: const Icon(Icons.close_sharp, size: 30),
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(
        Icons.arrow_back,
        size: 30,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return BlocBuilder<SearchGroupCubit, SearchGroupState>(
      bloc: blocContext,
      builder: (context, state) {
        return state.when(
          initial: () => Container(),
          failure: (e) => Container(),
          success: (data) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: data.length,
              itemBuilder: (context, index) {
                return SearchGroupTile(data[index]);
              },
            );
          },
        );
      },
    );
  }
}