import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:twitter_clone_zeroplus/ui/pages/top_page/top_page.dart';
import 'package:twitter_clone_zeroplus/ui/states/top_page_state/top_page_state.dart';

import 'ui/view_models/top_page_view_model/top_page_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<TopPageViewModel, TopPageState>(
          create: (_) => TopPageViewModel(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(backgroundColor: Colors.white),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TopPage();
  }
}
