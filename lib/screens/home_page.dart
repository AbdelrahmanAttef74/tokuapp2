import 'package:flutter/material.dart';
import 'package:tuku_app/components/category_item.dart';
import 'package:tuku_app/screens/colors_page.dart';
import 'package:tuku_app/screens/family_page.dart';
import 'package:tuku_app/screens/numbers_page.dart';
import 'package:tuku_app/screens/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff4da),
      appBar: AppBar(
        title: const Text(
          'Toku',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff4a322b),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              //here we use Navigator class to build another widget'page' above the current widget
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
            child: Category(
              text: 'Numbers',
              color: Colors.orange,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembersPage();
              }));
            },
            child: Category(
              text: 'Family Members',
              color: const Color(0xff538033),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage(
                  color: const Color(0xff7e3fa3),
                );
              }));
            },
            child: Category(
              text: 'Colors',
              color: const Color(0xff7e3fa3),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
            child: Category(
              text: 'Phrases',
              color: const Color(0xff48a5cc),
            ),
          ),
        ],
      ),
    );
  }
}
