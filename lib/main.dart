import 'package:flutter/material.dart';
import 'package:flutter_application_route/page1.dart';
import 'package:flutter_application_route/page2.dart';
import 'package:flutter_application_route/page3.dart';
import 'package:flutter_application_route/page4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(label: 'home', icon: Icon(Icons.home)),
    BottomNavigationBarItem(label: 'chat', icon: Icon(Icons.chat)),
    BottomNavigationBarItem(label: 'shop', icon: Icon(Icons.shopify)),
    BottomNavigationBarItem(
        label: 'My', icon: Icon(Icons.mobile_friendly_rounded)),
  ];

  int now = 0;
  List<Widget> pages = [Page1(), Page2(), Page3(), Page4()];
  var nowPage;
  void changePage(int page) {
    setState(() {
      now = page;
      nowPage = pages[page];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: nowPage,
        bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              changePage(value);
            },
            currentIndex: now,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.pink,
            items: bottomItems),
      ),
    );
  }
}
