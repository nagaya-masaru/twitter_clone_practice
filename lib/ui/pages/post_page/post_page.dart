import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:twitter_clone_zeroplus/ui/components/app_bars/common_app_bar/common_app_bar.dart';
import 'package:twitter_clone_zeroplus/ui/view_models/top_page_view_model/top_page_view_model.dart';

class PostPage extends StatelessWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CommonAppBar(
        title: '',
        trailing: [
          TextButton(
            onPressed: () async {
              final isSuccess = await context
                  .read<TopPageViewModel>()
                  .setPost(controller.text);
              if (isSuccess) {
                Navigator.pop(context);
              }
            },
            child: const Text('投稿'),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextFormField(
              controller: controller,
              maxLines: null,
              minLines: 10,
              maxLength: 140,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: '今の気分は？',
              ),
            ),
          )
        ],
      ),
    );
  }
}
