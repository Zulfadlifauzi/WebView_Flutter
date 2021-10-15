import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:webview/screens/web_view.dart';
import 'package:webview/ui/theme.dart';

void main() => runApp(const HomeScreens());

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          backgroundColor: primaryClr,
          appBar: AppBar(
            backgroundColor: Colors.yellow[600],
            title: const Text(
              'TARSOFT',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 70, top: 20),
                child: Text(
                  'WELCOME TO TARSOFT',
                  style: headingStyle,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 60),
                width: 500,
                height: 440,
                child: Row(
                  children: [Lottie.asset('assets/lottie/hi.json')],
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 550, left: 110),
                    child: Text(
                      'For more info go to our website!',
                      style: subHeadingStyle,
                    ),
                  ),
                  Container(
                    width: 100,
                    margin: const EdgeInsets.only(left: 120, top: 10),
                    decoration: BoxDecoration(
                        color: Colors.yellow[600],
                        borderRadius: BorderRadius.circular(5)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const WebViewScreens()));
                      },
                      child: Text(
                        'WEBSITE',
                        style: textButton,
                      ),
                    ),
                  )
                ],
              )
            ],
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
