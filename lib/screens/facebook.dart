import 'package:flutter/material.dart';
import 'package:webview/screens/home_screens.dart';
import 'package:webview/ui/theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FacebookWebViewScreens extends StatefulWidget {
  const FacebookWebViewScreens({Key? key}) : super(key: key);

  @override
  _FacebookWebViewScreensState createState() => _FacebookWebViewScreensState();
}

class _FacebookWebViewScreensState extends State<FacebookWebViewScreens> {
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
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(
              Icons.clear,
              color: white,
            ),
            onPressed: () {
              Navigator.pop(context,
                  MaterialPageRoute(builder: (context) => const HomeScreens()));
            },
          ),
          title: Text(
            'Facebook EIS MDHS',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () async {
                  if (await controller.canGoBack()) {
                    controller.goBack();
                  }
                },
                icon: const Icon(
                  Icons.arrow_back,
                  color: white,
                )),
            IconButton(
                onPressed: () {
                  controller.reload();
                  controller.clearCache();
                  CookieManager().clearCookies();
                },
                icon: const Icon(
                  Icons.refresh,
                  color: white,
                ))
          ],
        ),
        body: WebView(
          initialUrl: 'https://www.facebook.com/profile.php?id=100066702995821',
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller) {
            this.controller = controller;
          },
        ),
      ),
    );
  }
}
