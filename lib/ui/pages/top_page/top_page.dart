import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter_clone_zeroplus/ui/components/buttons/floating_action_button/floating_action_button.dart';
import 'package:twitter_clone_zeroplus/ui/states/top_page_state/top_page_state.dart';

import '../../components/app_bars/common_app_bar/common_app_bar.dart';
import 'components/post_item/post_item.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: const AppFloatingActionButton(),
      appBar:
          CommonAppBar(imageUrl: context.watch<TopPageState>().user.imageUrl),
      body: ListView.separated(
        itemBuilder: (_, index) {
          final post = context.watch<TopPageState>().posts[index];
          return PostItem(post: post);
        },
        separatorBuilder: (_, __) => SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 8,
        ),
        itemCount: context.watch<TopPageState>().posts.length,
        shrinkWrap: true,
      ),
    );
  }
}
