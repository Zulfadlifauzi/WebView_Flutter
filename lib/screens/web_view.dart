import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreens extends StatefulWidget {
  const WebViewScreens({Key? key}) : super(key: key);

  @override
  _WebViewScreensState createState() => _WebViewScreensState();
}

class _WebViewScreensState extends State<WebViewScreens> {
  late WebViewController controller;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await controller.canGoBack()) {
          controller.goBack();
          return false;
        } else {
          return true;
        }
      },
      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
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              controller.clearCache();
              CookieManager().clearCookies();
            },
          ),
          title: const Text('WebView'),
          actions: [
            IconButton(
                onPressed: () async {
                  if (await controller.canGoBack()) {
                    controller.goBack();
                  }
                },
                icon: const Icon(Icons.arrow_back))
          ],
        ),
        body: WebView(
          initialUrl: 'https://tarsoft.co',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller) {
            this.controller = controller;
          },
        ),
      ),
    );
  }
}
