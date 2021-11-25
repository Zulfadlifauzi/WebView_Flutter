import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:webview/screens/web_view.dart';
import 'package:webview/ui/theme.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: webViewPrimaryClr,
        appBar: AppBar(
          backgroundColor: Colors.yellow[600],
          title: const Text(
            'TARSOFT WEBVIEW',
            style: TextStyle(color: Colors.black, letterSpacing: 5),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 30),
                      child: Text(
                        'WELCOME TO TARSOFT',
                        style: headingStyle,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                width: double.infinity,
                height: 420,
                child: Column(
                  children: [
                    Lottie.asset(
                      'assets/lottie/hi.json',
                    )
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        'For more info go to our website!',
                        style: subHeadingStyle,
                      ),
                    ),
                    Container(
                      width: 100,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          color: Colors.yellow[600],
                          borderRadius: BorderRadius.circular(5)),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const WebViewScreens()));
                        },
                        child: Text(
                          'WEBSITE',
                          style: textButton,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
