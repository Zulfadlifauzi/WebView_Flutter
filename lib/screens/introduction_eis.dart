import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionEIS extends StatefulWidget {
  const IntroductionEIS({Key? key}) : super(key: key);

  @override
  _IntroductionEISState createState() => _IntroductionEISState();
}

class _IntroductionEISState extends State<IntroductionEIS> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Text('Mengenai EIS'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 0.5,
                    blurRadius: 4,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: [
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
                  Text(
                    'Portal EIS MDHS merupakan satu aplikasi Portal Maklumat Eksekutif Majlis Daerah Hulu Selangor yang dibangunkan oleh Majlis Daerah Hulu Selangor. Aplikasi ini mengandungi Pangkalan Data Spatial Berasakan Sistem Maklumat Geografi (GIS) dan dokumen rujukan yang menghimpunkan sumber data dari pelbahai jabatan/agensi. Aplikasi ini merupakan pusat sehenti (One Stop Center) - Pangkalan Data Spatial dan bukan Spatial untuk rujukan pelbagai pihak sama ada disektor awam, swasta dan akademik. Ia juga dibangunkan selaras dengan Pelan Strategik MDHS bagi meningkatkan sistem capaian maklumat kepada orang awam khususnya berkaitan perancangan guna tanah dan sekaligus dapat membudayakan ICT dalam urusan pentadbiran kerajaan',
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  Widget myMedkadBuildIndicator() => AnimatedSmoothIndicator(
      effect: const WormEffect(
          dotHeight: 8, dotWidth: 8, activeDotColor: Colors.black),
      activeIndex: activeIndex,
      count: 5);
}
