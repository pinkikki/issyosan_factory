import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:issyosan_factory/services/navigation_service.dart';
import 'package:issyosan_factory/ui/viewmodels/baby.dart';
import 'package:issyosan_factory/ui/widget/drawer.dart';
import 'package:provider/provider.dart';

import '../../../locator.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({Key key}) : super(key: key);

  @override
  _BooksPageState createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  final _navigationService = locator.get<NavigationService>();

  @override
  void initState() {
    super.initState();
    Provider.of<BabyViewModel>(context, listen: false).init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      drawer: AppDrawer(),
      body: _buildBody(context),
      floatingActionButton: _buildFloatingActionButton(),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    final model = Provider.of<BabyViewModel>(context, listen: false);
    return AppBar(
      title: const Text('Books'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: model.refresh,
        )
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return Consumer<BabyViewModel>(
      builder: (context, model, child) {
        return ListView.builder(
            itemCount: model.books.length,
            itemBuilder: (context, i) {
              final book = model.books[i];
              return ListTile(
                  title: Text(book.name),
                  subtitle: Text(book.released.toIso8601String()),
                  key: Key(book.id.toString()),
                  onTap: () => _navigationService.navigateTo('book_detail'));
            });
      },
    );
  }

  Widget _buildFloatingActionButton() {
    return FloatingActionButton(
        heroTag: 'Add',
        tooltip: 'Add',
        child: FaIcon(FontAwesomeIcons.plus),
        onPressed: () => _navigationService.navigateTo('book_registration'));
  }
}
