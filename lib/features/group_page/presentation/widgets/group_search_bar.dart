// import 'package:chat_app/features/components/search_bar.dart';
// import 'package:chat_app/features/group_page/data/models/search_tile_model/search_tile_model.dart';
// import 'package:chat_app/features/group_page/presentation/logic/search_group_bloc/search_group_bloc.dart';
// import 'package:chat_app/features/group_page/presentation/widgets/search_group_tile.dart';
// import 'package:chat_app/helper/constant.dart';
// import 'package:easy_search_bar/easy_search_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class GroupSearchBar extends StatelessWidget {
//   const GroupSearchBar({super.key});
//   @override
//   Widget build(BuildContext context) {
//     var theme = Theme.of(context);
//     return BlocProvider(
//       create: (context) => SearchGroupBloc(),
//       child: BlocBuilder<SearchGroupBloc, SearchGroupState>(
//         builder: (context, state) {
//           Widget searchList(SearchGroupState state) {
//             if (state is SearchGroupSuccess) {
//               print('1-------${state.data}');
//               return ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: state.data.length,
//                 itemBuilder: (context, index) {
//                   print('2-------${state.data}');
//                   return SearchGroupTile(state.data[index]);
//                 },
//               );
//             } else {
//               return Text('No Data', style: theme.textTheme.bodyLarge);
//             }
//           }
//           return SearchBar(
//             onSearch: (data) =>
//                 context.read<SearchGroupBloc>().add(SearchGroupEvent(data)),
//             list: Material(
//               color: Colors.transparent,
//               child: Container(
//                 padding: const EdgeInsets.symmetric(
//                   horizontal: 15,
//                   vertical: 10,
//                 ),
//                 constraints: const BoxConstraints(
//                   maxHeight: 200,
//                   minHeight: 50,
//                 ),
//                 width: double.infinity,
//                 decoration: kRoundedBottomContainer,
//                 child: searchList(state),
                // child: state.when(
                //   initial: () =>
                //       Text('No Data', style: theme.textTheme.bodyLarge),
                //   success: (searchSnapshot) {
                //     return ListView.builder(
                //       shrinkWrap: true,
                //       itemCount: searchSnapshot.docs.length,
                //       itemBuilder: (context, index) {
                //         var ss = searchSnapshot.docs[index];
                //         SearchTileModel data = SearchTileModel(
                //           userName: cubit.userName ?? '',
                //           groupId: ss['groupId'],
                //           groupName: ss['groupName'],
                //           adminName: ss['admin'],
                //         );
                //         return SearchGroupTile(data);
                //       },
                //     );
                //   },
                //   loading: () =>
                //       Text('No Data', style: theme.textTheme.bodyLarge),
                //   error: (e) =>
                //       Text(e.toString(), style: theme.textTheme.bodyLarge),
                // ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
