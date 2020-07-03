import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class TorokkorioPage extends StatefulWidget {
  const TorokkorioPage({Key key}) : super(key: key);

  @override
  _TorokkorioState createState() => _TorokkorioState();
}

class _TorokkorioState extends State<TorokkorioPage> {
  WebViewController _webViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(context),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('トロッコリオの紹介'),
    );
  }

  Widget _buildBody(BuildContext context) {
    final _mediaSize = MediaQuery.of(context).size;
    final _key = UniqueKey();
    return SafeArea(
        child: ConstrainedBox(
      constraints: BoxConstraints(
          maxWidth: _mediaSize.width, maxHeight: _mediaSize.height),
      child: WebView(
        onWebViewCreated: (controller) {
          _webViewController = controller;
        },
        key: _key,
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://torokkorio.github.io/',
        javascriptChannels: {
          JavascriptChannel(
              name: 'done',
              onMessageReceived: (JavascriptMessage result) {
                _reloadWebView();
              }),
        },
      ),
    ));
  }

  void _reloadWebView() {
    _webViewController?.reload();
  }
}
