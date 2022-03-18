import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  static String id = 'menu_page';

  const MenuPage({Key? key}) : super(key: key);

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  void onTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Apicativo'),
        ),
        body: PageView(
          controller: pageController,
          children: const [
            Text("Primera pantalla"),
            Text("Segunda pantalla")
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil')
            ],
            currentIndex: _selectedIndex,
            onTap: onTapped,),
      ),
    );
  }
}
