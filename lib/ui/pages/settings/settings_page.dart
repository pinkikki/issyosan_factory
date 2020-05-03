import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:issyosan_factory/ui/models/settings_model.dart';
import 'package:issyosan_factory/ui/widget/drawer.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<SettingsPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    Provider.of<SettingsViewModel>(context, listen: false).init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      drawer: AppDrawer(),
      body: _buildBody(context),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      title: const Text('Settings'),
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
    return Consumer<SettingsViewModel>(builder: (context, model, child) {
      return Column(
        children: <Widget>[
          Form(
              key: _formKey,
              child: SwitchListTile(
                title: const Text('通知'),
                value: model.isNotifiable,
                onChanged: (bool _) => model.change(),
              )),
        ],
      );
    });
  }

  Future<void> _save() async {
    // nop
  }
}
