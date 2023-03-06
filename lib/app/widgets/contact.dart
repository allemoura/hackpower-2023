import 'package:flutter/material.dart';
import 'package:hack_power_site/app/widgets/aligned_grid.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).colorScheme.secondary,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Text(
                    "Organizadores",
                    style: TextStyle(
                        fontSize: 22,
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  ),
                  AlignedGrid(items: [
                    Image.asset(
                      "assets/logos/logo_mcc.png",
                      width: 100,
                    ),
                  ])
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 20),
              child: Column(children: [
                const SizedBox(height: 40),
                Text(
                  "Hack Power 2023",
                  style: TextStyle(
                      fontSize: 22,
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Meninas na Ciência da Computação",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  "email@mcc",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ]),
            )
          ],
        ));
  }
}
