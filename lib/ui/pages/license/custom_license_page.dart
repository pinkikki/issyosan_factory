import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomLicensePage extends StatelessWidget {
  const CustomLicensePage({Key key}) : super(key: key);

  Future<List<LicenseData>> licenses() async {
    final result = <LicenseData>[];
    await for (final license in LicenseRegistry.licenses) {
      license.packages.toList().asMap().forEach((key, value) {
        var centered = '';
        var other = '';

        for (final paragraph in license.paragraphs) {
          if (paragraph.indent == LicenseParagraph.centeredIndent) {
            centered = paragraph.text;
          } else {
            assert(paragraph.indent >= 0);
            other += '\n';
            if (paragraph.indent == 1) {
              other += '  ';
            }
            if (paragraph.indent == 2) {
              other += '    ';
            }
            other += '${paragraph.text}';
          }
        }
        result.add(LicenseData(value, centered, other));
      });
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Licenses'),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: size.width * 0.01),
          child: FutureBuilder<List<LicenseData>>(
            future: licenses(),
            builder: (context, snapshot) {
              return snapshot.hasData
                  ? SingleChildScrollView(
                      child: Column(
                        children: snapshot.data
                            .map(
                              (e) => Column(
                                children: <Widget>[
                                  Container(
                                    margin: const EdgeInsets.only(top: 20),
                                    child: Text(
                                      e.packageName,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Container(
                                    child: Text(
                                      e.centeredParagraph,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(child: Text(e.paragraph)),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    );
            },
          ),
        ),
      ),
    );
  }
}

class LicenseData {
  LicenseData(this.packageName, this.centeredParagraph, this.paragraph);

  final String packageName;
  final String centeredParagraph;
  final String paragraph;
}
