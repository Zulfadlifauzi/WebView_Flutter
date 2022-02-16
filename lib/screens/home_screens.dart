import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:webview/screens/contact.dart';
import 'package:webview/screens/facebook.dart';
import 'package:webview/screens/introduction_eis.dart';
import 'package:webview/screens/portal.dart';
import 'package:webview/screens/web_view.dart';
import 'package:webview/ui/theme.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  int activeIndex = 0;
  int columnCount = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: webViewPrimaryClr,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'EIS MHDS',
            style: TextStyle(color: Colors.white, letterSpacing: 5),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 1.2,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      onPageChanged: (index, reason) =>
                          setState(() => activeIndex = index),
                      height: 180,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal,
                    ),
                    itemCount: 5,
                    itemBuilder: (context, index, pageViewIndex) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Image.network(
                            'https://myenglishmatters.com/wp-content/uploads/2020/11/placeholder.png',
                            fit: BoxFit.cover,
                          ));
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(child: myMedkadBuildIndicator()),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 0.5,
                            blurRadius: 8,
                            offset: const Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    height: 80,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 420,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PortalWebViewScreens()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 0.5,
                                      blurRadius: 8,
                                      offset: const Offset(
                                          0, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                width: 160,
                                height: 200,
                                child: Column(
                                  children: [
                                    Container(
                                        width: double.infinity,
                                        height: 150,
                                        child: Lottie.network(
                                            'https://assets4.lottiefiles.com/datafiles/uihIaQIvWBfYL9a/data.json')),
                                    Text('Portal EIS')
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            IntroductionEIS()));
                              },
                              child: Container(
                                width: 160,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 0.5,
                                      blurRadius: 8,
                                      offset: const Offset(
                                          0, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                        width: double.infinity,
                                        height: 150,
                                        child: Lottie.network(
                                            'https://assets8.lottiefiles.com/private_files/lf30_bkvgqudf.json')),
                                    Text('Mengenai EIS')
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ContactUsScreen()));
                              },
                              child: Container(
                                width: 160,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 0.5,
                                      blurRadius: 8,
                                      offset: const Offset(
                                          0, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                        width: double.infinity,
                                        height: 150,
                                        child: Lottie.network(
                                            'https://assets6.lottiefiles.com/packages/lf20_xd8pnngo.json')),
                                    Text('Hubungi Kami')
                                  ],
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FacebookWebViewScreens()));
                              },
                              child: Container(
                                width: 160,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 0.5,
                                      blurRadius: 8,
                                      offset: const Offset(
                                          0, 1), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                        width: double.infinity,
                                        height: 150,
                                        child: Lottie.network(
                                            'https://assets10.lottiefiles.com/packages/lf20_9wjm14ni.json')),
                                    Text('Facebook')
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                  // Container(
                  //   width: double.infinity,
                  //   height: MediaQuery.of(context).size.height,
                  //   child: GridView(
                  //     physics: NeverScrollableScrollPhysics(),
                  //     children: [
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                   builder: (context) =>
                  //                       PortalWebViewScreens()));
                  //         },
                  //         child: Container(
                  //           decoration: BoxDecoration(
                  //               boxShadow: [
                  //                 BoxShadow(
                  //                   color: Colors.grey.withOpacity(0.2),
                  //                   spreadRadius: 0.5,
                  //                   blurRadius: 8,
                  //                   offset: const Offset(
                  //                       0, 1), // changes position of shadow
                  //                 ),
                  //               ],
                  //               color: Colors.white,
                  //               borderRadius: BorderRadius.circular(10)),
                  //           child: Column(
                  //             children: [
                  //               Expanded(
                  //                 flex: 3,
                  //                 child: Container(
                  //                   width: double.infinity,
                  //                   child: Image.network(
                  //                     'https://www.researchgate.net/profile/Suriyani-Muhamad/publication/327604136/figure/fig1/AS:750693539385344@1555990695956/The-Hulu-Terengganu-District-map-Source-District-and-Land-Office-of-Hulu-Terengganu.ppm',
                  //                     fit: BoxFit.cover,
                  //                   ),
                  //                   color: Colors.blue,
                  //                 ),
                  //               ),
                  //               Expanded(
                  //                   flex: 1,
                  //                   child: Column(
                  //                     crossAxisAlignment:
                  //                         CrossAxisAlignment.center,
                  //                     mainAxisAlignment:
                  //                         MainAxisAlignment.center,
                  //                     children: [
                  //                       Text(
                  //                         'Portal EIS',
                  //                         style: TextStyle(color: Colors.black),
                  //                       ),
                  //                     ],
                  //                   )),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                   builder: (context) => IntroductionEIS()));
                  //         },
                  //         child: Container(
                  //           decoration: BoxDecoration(
                  //             boxShadow: [
                  //               BoxShadow(
                  //                 color: Colors.grey.withOpacity(0.2),
                  //                 spreadRadius: 0.5,
                  //                 blurRadius: 8,
                  //                 offset: const Offset(
                  //                     0, 1), // changes position of shadow
                  //               ),
                  //             ],
                  //             borderRadius: BorderRadius.circular(10),
                  //             color: Colors.white,
                  //           ),
                  //           child: Column(children: [
                  //             Expanded(
                  //               flex: 4,
                  //               child: Container(
                  //                 width: double.infinity,
                  //                 child: Image.network(
                  //                   'https://mphs.gov.my/jutoochy/2021/08/eis-2.png',
                  //                   fit: BoxFit.fill,
                  //                 ),
                  //                 color: Colors.white,
                  //               ),
                  //             ),
                  //             Expanded(
                  //                 flex: 1,
                  //                 child: Column(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.center,
                  //                   mainAxisAlignment: MainAxisAlignment.center,
                  //                   children: [
                  //                     Text(
                  //                       'Mengenai EIS',
                  //                       style: TextStyle(color: Colors.black),
                  //                     ),
                  //                   ],
                  //                 ))
                  //           ]),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                   builder: (context) => ContactUsScreen()));
                  //         },
                  //         child: Container(
                  //           decoration: BoxDecoration(
                  //             boxShadow: [
                  //               BoxShadow(
                  //                 color: Colors.grey.withOpacity(0.2),
                  //                 spreadRadius: 0.5,
                  //                 blurRadius: 8,
                  //                 offset: const Offset(
                  //                     0, 1), // changes position of shadow
                  //               ),
                  //             ],
                  //             borderRadius: BorderRadius.circular(10),
                  //             color: Colors.white,
                  //           ),
                  //           child: Column(children: [
                  //             Expanded(
                  //               flex: 4,
                  //               child: Container(
                  //                 child: Image.network(
                  //                   'https://kitarecycle.com/bm/wp-content/uploads/elementor/thumbs/Hubungi-Kami_Malay-scaled-p22n3wif2xc4uc9dxautebjmelk6yjyhhnl4tzzm74.jpg',
                  //                   fit: BoxFit.fill,
                  //                 ),
                  //                 color: Colors.blue,
                  //               ),
                  //             ),
                  //             Expanded(
                  //                 flex: 1,
                  //                 child: Column(
                  //                   crossAxisAlignment:
                  //                       CrossAxisAlignment.center,
                  //                   mainAxisAlignment: MainAxisAlignment.center,
                  //                   children: [
                  //                     Text(
                  //                       'Hubungi Kami',
                  //                       style: TextStyle(color: Colors.black),
                  //                     ),
                  //                   ],
                  //                 ))
                  //           ]),
                  //         ),
                  //       ),
                  //       InkWell(
                  //         onTap: () {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                   builder: (context) =>
                  //                       FacebookWebViewScreens()));
                  //         },
                  //         child: Container(
                  //           decoration: BoxDecoration(
                  //             boxShadow: [
                  //               BoxShadow(
                  //                 color: Colors.grey.withOpacity(0.2),
                  //                 spreadRadius: 0.5,
                  //                 blurRadius: 8,
                  //                 offset: const Offset(
                  //                     0, 1), // changes position of shadow
                  //               ),
                  //             ],
                  //             borderRadius: BorderRadius.circular(10),
                  //             color: Colors.white,
                  //           ),
                  //           child: Column(children: [
                  //             Expanded(
                  //               child: Container(
                  //                 decoration: BoxDecoration(
                  //                     color: Colors.blue,
                  //                     borderRadius: BorderRadius.circular(10)),
                  //                 width: double.infinity,
                  //                 child: Image.network(
                  //                   'https://i2-prod.mirror.co.uk/incoming/article676858.ece/ALTERNATES/s1200/Topic%20-%20Facebook',
                  //                   fit: BoxFit.contain,
                  //                 ),
                  //               ),
                  //             ),
                  //             Column(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 Text(
                  //                   'Facebook MDHS',
                  //                   style: TextStyle(
                  //                       color: Colors.black, fontSize: 16),
                  //                 ),
                  //               ],
                  //             ),
                  //           ]),
                  //         ),
                  //       ),
                  //     ],
                  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //         mainAxisSpacing: 5,
                  //         crossAxisSpacing: 5,
                  //         crossAxisCount: 2,
                  //         childAspectRatio: 1),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ));
  }

  Widget myMedkadBuildIndicator() => AnimatedSmoothIndicator(
      effect: const WormEffect(
          dotHeight: 8, dotWidth: 8, activeDotColor: Colors.black),
      activeIndex: activeIndex,
      count: 5);
}
