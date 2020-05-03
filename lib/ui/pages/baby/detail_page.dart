import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailPage extends StatefulWidget {
  const BookDetailPage({Key key}) : super(key: key);

  @override
  _BookDetailState createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text('Book Detail'),
    );
  }

  Widget _buildBody(BuildContext context) {
    return const Center(
      child: Text('show book detail.'),
    );
  }
}
