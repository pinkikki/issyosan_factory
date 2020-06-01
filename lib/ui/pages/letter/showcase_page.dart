import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:issyosan_factory/services/navigation_service.dart';
import 'package:issyosan_factory/ui/controllers/showcase_controller.dart';
import 'package:issyosan_factory/ui/controllers/showcase_state.dart';
import 'package:issyosan_factory/ui/widget/drawer.dart';
import 'package:provider/provider.dart';

import '../../../locator.dart';

class ShowcasePage extends StatefulWidget {
  const ShowcasePage({Key key}) : super(key: key);

  @override
  _ShowcaseState createState() => _ShowcaseState();
}

class _ShowcaseState extends State<ShowcasePage> {
  final _navigationService = locator.get<NavigationService>();

  @override
  void initState() {
    super.initState();
    context.read<ShowcaseController>().fetch();
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
    return AppBar(
      title: const Text('Showcase'),
      actions: <Widget>[
        IconButton(
            icon: const Icon(Icons.view_array),
            onPressed: () => _navigationService.navigateTo('letter_book'))
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
    final papers = context.select((ShowcaseState state) => state.papers);
    return SafeArea(
        child: GridView.builder(
            itemCount: papers.length,
            padding: const EdgeInsets.all(8),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4, crossAxisSpacing: 2, mainAxisSpacing: 10),
            itemBuilder: (context, i) {
              final paper = papers[i];
              return _photoItem(paper.no);
            }));
  }

  Widget _photoItem(String no) {
    final assetsImage = 'assets/letter/paper$no.png';
    return Container(
      child: Image(image: AssetImage(assetsImage)),
    );
  }
}
