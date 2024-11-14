import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/widgets/item_card.dart';
import 'package:wisata_candi/models/candi.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO 1: appbar
      appBar: AppBar(
        title: const Text('Wisata Candi'),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          padding: EdgeInsets.all(8),
          itemCount: candiList.length,
          itemBuilder: (context, index) {
            Candi candi = candiList[index];
            return ItemCard(
              candi: candi,
            );
          }),

      //TODO 2: GridView builder

      //TODO 3: ItemCard
    );
  }
}
