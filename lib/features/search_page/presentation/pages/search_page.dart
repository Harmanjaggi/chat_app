import 'package:chat_app/features/components/failiure_screen.dart';
import 'package:chat_app/features/components/loading_screen.dart';
import 'package:chat_app/features/search_page/data/models/search_tile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../logic/search_cubit/search_cubit.dart';
import '../widgets/search_group_tile.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Theme.of(context).primaryColor,
              title: const Text(
                "Search",
                style: TextStyle(
                  fontSize: 27,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).primaryColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: searchController,
                            style: const TextStyle(color: Colors.white),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search groups....",
                              hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => context
                              .read<SearchCubit>()
                              .getSearchedGroup(searchController.text),
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  state.when(
                      failure: (e) => FailureScreen(e),
                      loading: () => const LoadingScreen(),
                      initial: () => Container(),
                      success: (searchSnapshot) {
                        return ListView.builder(
                          shrinkWrap: true,
                          itemCount: searchSnapshot.docs.length,
                          itemBuilder: (context, index) {
                            var ss = searchSnapshot.docs[index];
                            var cubit = context.read<SearchCubit>();
                            SearchTileModel data = SearchTileModel(
                                userName: cubit.userName ?? '',
                                groupId: ss['groupId'],
                                groupName: ss['groupName'],
                                adminName: ss['admin']);
                            return SearchGroupTile(data);
                          },
                        );
                      }),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
