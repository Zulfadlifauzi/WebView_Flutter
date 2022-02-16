import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text('Hubungi Kami'),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: '+603 – 6064 1331',
                icon: Icon(Icons.phone),
              ),
              Tab(
                text:
                    'MAJLIS DAERAH HULU SELANGOR,JALAN BUKIT KERAJAAN,44000 KUALA KUBU BHARU,SELANGOR DARUL EHSAN.',
                icon: Icon(Icons.location_on_rounded),
              ),
              Tab(
                text: 'aduan@mdhs.gov.my',
                icon: Icon(Icons.email),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                    width: double.infinity,
                    height: 100,
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Telefon : +603 – 6064 1331',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text('Faksimili: +603 – 6064 3991'),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Text('Tab 2'),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.only(left: 50, right: 50),
                margin: EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                height: 500,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 0.5,
                        blurRadius: 8,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Contact Form',
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                    Container(
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Name'),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Name',
                              prefixIcon: const Icon(Icons.person),
                              prefixIconColor: Colors.redAccent,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none),
                              fillColor: Colors.grey[50],
                              filled: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Mail'),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Email',
                              prefixIcon: const Icon(Icons.email),
                              prefixIconColor: Colors.redAccent,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none),
                              fillColor: Colors.grey[50],
                              filled: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Phone'),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Phone',
                              prefixIcon:
                                  const Icon(Icons.phone_android_outlined),
                              prefixIconColor: Colors.redAccent,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none),
                              fillColor: Colors.grey[50],
                              filled: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 250,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Message'),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            minLines: 1,
                            maxLines: 5,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              hintText: 'Message',
                              prefixIconColor: Colors.redAccent,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none),
                              fillColor: Colors.grey[50],
                              filled: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10)),
                        width: 250,
                        height: 40,
                        child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'Submit',
                              style: TextStyle(color: Colors.white),
                            )))
                  ],
                ),
              ),
            )
          ],
        ),
      ));
}
