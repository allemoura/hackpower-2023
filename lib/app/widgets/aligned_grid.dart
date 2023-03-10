import 'package:flutter/material.dart';

class AlignedGrid extends StatelessWidget {
  final List<Widget> items;
  final double runSpacing = 4;
  final double spacing = 4;
  final columns = 4;

  const AlignedGrid({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(
        runSpacing: runSpacing,
        spacing: spacing,
        alignment: WrapAlignment.spaceEvenly,
        children: items
            .map((item) => Padding(
                padding: const EdgeInsets.only(top: 10),
                child: item))
            .toList(),
      ),
    );
  }
}
