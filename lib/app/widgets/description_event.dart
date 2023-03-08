import 'package:flutter/material.dart';
import 'package:hack_power_site/infra/utils/static_text.dart';

class DescriptionEvent extends StatelessWidget {
  const DescriptionEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 20),
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const Text(
            "O QUE É?",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            StaticText().eventDescription,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 12, color: Colors.white),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
