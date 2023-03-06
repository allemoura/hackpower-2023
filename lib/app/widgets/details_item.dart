import 'package:flutter/material.dart';
import 'package:hack_power_site/app/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailsItem extends StatefulWidget {
  final String title;
  final IconData icon;
  final List<String> details;
  final String buttonTitle;
  final String linkButton;

  const DetailsItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.details,
      required this.buttonTitle,
      required this.linkButton});

  @override
  State<DetailsItem> createState() => _DetailsItemState();
}

class _DetailsItemState extends State<DetailsItem> {
  double elevation = 0;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          elevation = 30;
        });
      },
      onExit: (event) {
        setState(() {
          elevation = 0;
        });
      },
      child: Material(
        elevation: elevation,
        child: Container(
          height: 400,
          width: 300,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: colors.secondary,
                spreadRadius: 1,
                blurRadius: 15,
                offset: const Offset(5, 5),
              )
            ],
            color: Colors.white,
            border: Border.all(color: colors.primary),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text(
                      widget.title,
                      style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    const SizedBox(height: 10),
                    Icon(
                      widget.icon,
                      color: colors.primary,
                      size: 60,
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  children: [
                    ...widget.details
                        .map((item) => Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: detailsBox(item),
                            ))
                        .toList(),
                    CustomButton(
                      color: colors.primary,
                      onTap: () async {
                        if (widget.buttonTitle.isNotEmpty) {
                          try {
                            await launchUrl(Uri.parse(widget.linkButton));
                          } catch (e) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text(e.toString())));
                          }
                        }
                      },
                      title: widget.buttonTitle,
                      textColor: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  detailsBox(String detail) {
    return Container(
      color: Theme.of(context).colorScheme.secondary,
      height: 60,
      width: 300,
      child: Center(
          child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 5),
        child: Text.rich(
          TextSpan(
            text: detail,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
          textAlign: TextAlign.center,
        ),
      )),
    );
  }
}
