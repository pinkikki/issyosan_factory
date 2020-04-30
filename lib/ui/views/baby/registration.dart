import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookRegistrationPage extends StatefulWidget {
  const BookRegistrationPage({Key key}) : super(key: key);

  @override
  _BookRegistrationState createState() => _BookRegistrationState();
}

class _BookRegistrationState extends State<BookRegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text('Book Registration'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.save),
          onPressed: () {
            if (_formKey.currentState.validate()) {
              _formKey.currentState.save();
              _save();
            }
          },
        )
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    return const Center(
      child: Text('please register book.'),
    );
  }

  Future<void> _save() async {
    // nop
  }
}
