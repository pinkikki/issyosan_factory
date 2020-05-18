import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:issyosan_factory/ui/controllers/letter_controller.dart';
import 'package:issyosan_factory/ui/controllers/letter_state.dart';
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
    context.read<LetterController>().fetch();
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
    final controller = Provider.of<LetterController>(context, listen: false);
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
    final papers = context.select((LetterState state) => state.papers);
    return GridView.builder(
        itemCount: papers.length,
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 2, mainAxisSpacing: 10),
        itemBuilder: (context, i) {
          final paper = papers[i];
          return _photoItem(paper.no);
        });
  }

  Widget _photoItem(String no) {
    final assetsImage = 'assets/letter/paper$no.png';
    return Container(
      child: Image(image: AssetImage(assetsImage)),
    );
  }
}
