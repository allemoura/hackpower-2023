import 'package:flutter/material.dart';
import 'package:hack_power_site/infra/utils/static_text.dart';

class DescriptionEvent extends StatelessWidget {
  const DescriptionEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 20),
      height: MediaQuery.of(context).size.height * 1.5,
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const Text(
            "O QUE É?",
            style: TextStyle(
                fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            StaticText().eventDescription,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 32, color: Colors.white),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
