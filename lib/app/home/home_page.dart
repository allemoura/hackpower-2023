import 'package:flutter/material.dart';
import 'package:hack_power_site/app/widgets/contact.dart';
import 'package:hack_power_site/app/widgets/custom_button.dart';
import 'package:hack_power_site/app/widgets/description_event.dart';
import 'package:hack_power_site/app/widgets/details_event.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final textButtonColor = Theme.of(context).colorScheme.primary;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              "assets/logos/logo_mcc.png",
              width: 160,
              height: 160,
            ),
            SizedBox(
              child: Row(
                children: [
                  CustomButton(
                    onTap: () {},
                    title: "Home",
                    textColor: textButtonColor,
                  ),
                  CustomButton(
                    onTap: () {},
                    title: "O que é?",
                    textColor: textButtonColor,
                  ),
                  CustomButton(
                    onTap: () {},
                    title: "Como funciona?",
                    textColor: textButtonColor,
                  ),
                  CustomButton(
                    onTap: () {},
                    title: "Contato",
                    textColor: textButtonColor,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "assets/logos/logo_evento.png",
            ),
          ),
          const DescriptionEvent(),
          const DetailsEvent(),
          const Contact()
        ],
      ),
    );
  }
}
