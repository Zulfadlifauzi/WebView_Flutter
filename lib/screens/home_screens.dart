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
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          backgroundColor: primaryClr,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.yellow[600],
            centerTitle: true,
            title: const Text(
              'TARSOFT',
              style: TextStyle(color: Colors.white, letterSpacing: 5),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        child: Text(
                          'WELCOME TO TARSOFT',
                          style: headingStyle,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    child: Lottie.asset('assets/lottie/hi.json', height: 450)),
                Center(
                  child: Column(
                    children: [
                      Container(
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
          )),
    );
  }
}

// _tarsoft() {
//   return const WebView(
//     initialUrl: 'https://tarsoft.co',
//     javascriptMode: JavascriptMode.unrestricted,
//   );
// }
