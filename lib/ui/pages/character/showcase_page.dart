import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:issyosan_factory/ui/controllers/character_controller.dart';
import 'package:issyosan_factory/ui/controllers/character_state.dart';
import 'package:issyosan_factory/ui/widget/drawer.dart';
import 'package:provider/provider.dart';

class ShowcasePage extends StatefulWidget {
  const ShowcasePage({Key key}) : super(key: key);

  @override
  _ShowcaseState createState() => _ShowcaseState();
}

class _ShowcaseState extends State<ShowcasePage> {
  @override
  void initState() {
    super.initState();
    context.read<CharacterController>().fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      drawer: AppDrawer(),
      body: _buildBody(context),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    final controller = Provider.of<CharacterController>(context, listen: false);
    return AppBar(
      title: const Text('Showcase'),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: controller.fetch,
        )
      ],
    );
  }

  Widget _buildBody(BuildContext context) {
    // 別のWidgetとして定義するか、ConsumerBuilderとかを利用しないと、
    // AppBarとかもリビルドされてしまうための対応
    return Showcase();
  }
}

class Showcase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final characters =
        context.select((CharacterState state) => state.characters);
    return ListView.builder(
        itemCount: characters.length,
        itemBuilder: (context, i) {
          final character = characters[i];
          return ListTile(title: Text(character.name));
        });
  }
}
