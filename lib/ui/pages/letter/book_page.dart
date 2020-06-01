import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:issyosan_factory/ui/controllers/book_controller.dart';
import 'package:issyosan_factory/ui/controllers/book_state.dart';
import 'package:provider/provider.dart';

class BookPage extends StatelessWidget {
  const BookPage._({Key key}) : super(key: key);

  static Widget wrapped() {
    return StateNotifierProvider<BookController, BookState>(
        create: (context) => BookController(), child: const BookPage._());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(context),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Book'),
    );
  }

  Widget _buildBody(BuildContext context) {
    // Controllerは、watchでも無駄なリビルドが走らないはず
    final bookController = context.watch<BookController>();
    final papers = context.select((BookState state) => state.papers);
    return PageView(
        controller: bookController.pageController,
        children: papers.map((p) => _page(p.no)).toList());
  }

  Widget _page(String no) {
    final assetsImage = 'assets/letter/paper$no.png';
    return Container(
      child: Image(image: AssetImage(assetsImage)),
    );
  }
}
