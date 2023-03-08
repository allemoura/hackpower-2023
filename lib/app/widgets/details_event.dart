import 'package:flutter/material.dart';
import 'package:hack_power_site/app/widgets/aligned_grid.dart';
import 'package:hack_power_site/app/widgets/details_item.dart';
import 'package:hack_power_site/infra/utils/static_text.dart';

class DetailsEvent extends StatelessWidget {
  const DetailsEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 30),
        Text(
          "COMO FUNCIONA?",
          style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
        AlignedGrid(
            items: StaticText()
                .detailsEvent
                .map((details) => DetailsItem(
                    title: details["title"],
                    icon: details["icon"],
                    details: details["details"],
                    buttonTitle: details["buttonText"],
                    linkButton: details["buttonLink"]))
                .toList()),
        const SizedBox(height: 20),
      ],
    );
  }
}
