import 'package:aquarium/screen/fish_screen.dart';
import 'package:aquarium/screen/plant_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: const [FishScreen(), PlantScreen()]),
      bottomNavigationBar: NavigationBar(
          selectedIndex: currentIndex,
          onDestinationSelected: (value) => setState(() {
                currentIndex = value;
              }),
          destinations: [
            NavigationDestination(
                icon: SvgPicture.asset('assets/icons/fish_outline.svg'),
                label: 'Animal',
                selectedIcon: SvgPicture.asset('assets/icons/fish_fill.svg')),
            NavigationDestination(
                icon: SvgPicture.asset('assets/icons/plant_outline.svg'),
                label: 'Plant',
                selectedIcon: SvgPicture.asset('assets/icons/plant_fill.svg')),
          ]),
    );
  }
}
