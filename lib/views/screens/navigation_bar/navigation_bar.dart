import 'package:flutter/material.dart';
import 'package:qr_scaner/views/screens/app_info/info_screen.dart';
import 'package:qr_scaner/views/screens/home_screen/home_screen.dart';
import 'package:qr_scaner/views/screens/qr_generate_screen/qr_generate.dart';

// ignore: must_be_immutable
class NavigationBars extends StatefulWidget {
  const NavigationBars({super.key});

  @override
  State<NavigationBars> createState() => _NavigationBarsState();
}

class _NavigationBarsState extends State<NavigationBars> {
  int curIndex = 1;
  List<Widget> pages = [
    const QrGenerateScreen(),
    const HomeScreen(),
    const InfoScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(191, 60, 63, 79),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  curIndex == 0 ? const Color(0xffFDB623) : Colors.grey[800],
                ),
              ),
              onPressed: () {
                curIndex = 0;
                setState(() {});
              },
              icon: const Icon(
                Icons.document_scanner_outlined,
                color: Colors.white,
              ),
            ),
            IconButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  curIndex == 1 ? const Color(0xffFDB623) : Colors.grey[800],
                ),
              ),
              onPressed: () {
                curIndex = 1;
                setState(() {});
              },
              icon: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.qr_code_scanner_sharp,
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  curIndex == 2 ? const Color(0xffFDB623) : Colors.grey[800],
                ),
              ),
              onPressed: () {
                curIndex = 2;
                setState(() {});
              },
              icon: const Icon(
                Icons.info,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: pages[curIndex],
    );
  }
}
