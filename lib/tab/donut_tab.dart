import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  final Function(double) onAdd;

  // Lista de donas en venta
  final List donutsOnSale = [
    ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
  ];

  DonutTab({super.key, required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.75,
      ),
      itemBuilder: (context, index) {
        double price = double.parse(donutsOnSale[index][1]); // Convertimos el precio

        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          donutName: donutsOnSale[index][3],
          onAdd: () => onAdd(price), // Pasamos la función con el precio
        );
      },
    );
  }
}

