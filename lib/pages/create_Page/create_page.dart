import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';
import 'package:todo_firebase/states/create_page_state.dart';

import '../../view_Models/create_page_view_model.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<CreatePageViewModel, CreatePageState>(
          create: (_) => CreatePageViewModel(),
        )
      ],
      child: const _CreatePage(),
    );
  }
}

class _CreatePage extends StatelessWidget {
  const _CreatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.send),
          onPressed: () async {
            await context.read<CreatePageViewModel>().finish();
            Navigator.pop(context);
          }),
      appBar: AppBar(
        title: const Text(
          '作成ページ',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextFormField(
              onChanged: (v) {
                context.read<CreatePageViewModel>().setText = v;

                ///viewModelからメソットを呼んでる///
              },
              decoration: const InputDecoration(
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
