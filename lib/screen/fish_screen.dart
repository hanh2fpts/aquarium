import 'package:aquarium/screen/list_animal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'background_widget.dart';

class FishScreen extends StatelessWidget {
  const FishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aquatic animal'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Stack(children: [
        //bg
        const BackgroundImage(),
        // cac card view de hien thi
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: GridView.count(
            crossAxisCount: 2,
            children: const [
              CardItem(
                bgDescription: 'assets/images/bg_Ca.png',
                title: 'Cá',
              ),
              CardItem(
                bgDescription: 'assets/images/bg_tep.jpeg',
                title: 'Tép',
              ),
              CardItem(
                bgDescription: 'assets/images/bg_oc.webp',
                title: 'Ốc',
              )
            ],
          ),
        )
      ]),
    );
  }
}

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.bgDescription, required this.title});
  final String bgDescription;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                CupertinoPageRoute(
                  builder: (context) => const ListAnimal(),
                ));
          },
          child: Stack(children: [
            ClipRRect(
              child: Image.asset(
                bgDescription,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
              ),
            )
          ])),
    );
  }
}
