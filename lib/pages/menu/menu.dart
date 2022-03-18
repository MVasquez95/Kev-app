import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  static String id = 'menu_page';

  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final int _selectedIndex = 0;
  PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Apicativo'),
        ),
        body: PageView(
          controller: pageController,
        ),
      ),
    );
  }
}
