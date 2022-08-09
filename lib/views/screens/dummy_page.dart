import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:dogadoption_app/views/screens/home.dart';
import 'package:flutter/material.dart';

class DummyPage extends StatefulWidget {
  const DummyPage({Key? key}) : super(key: key);

  @override
  State<DummyPage> createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavyBar(
          onItemSelected: (index) {
            currentIndex = index;
            setState(() {});
          },
          selectedIndex: currentIndex,
          items: [
            BottomNavyBarItem(
              icon: const Icon(Icons.home),
              title: const Text(
                "Home",
              ),
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.mail),
              title: const Text(
                "Contact",
              ),
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.favorite),
              title: const Text(
                "Favourites",
              ),
            ),
            BottomNavyBarItem(
              icon: const Icon(Icons.person),
              title: const Text(
                "Profile",
              ),
            ),
          ],
        ),
        body: (currentIndex == 0) ? const HomePage() : const Text("data"),
      ),
    );
  }
}
