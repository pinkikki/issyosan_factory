import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AboutTileLicensePage extends StatelessWidget {
  const AboutTileLicensePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Licenses'),
      ),
      body: const Center(child: AboutListTile()),
    );
  }
}

class LicenseData {
  LicenseData(this.packageName, this.centeredParagraph, this.paragraph);

  final String packageName;
  final String centeredParagraph;
  final String paragraph;
}
