import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const InfoCard({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
        ),
        child: ListTile(
          leading: Container(
            width: 40,
            height: double.infinity,
            child: Icon(
              Icons.warning_rounded,
              color: Colors.red,
            ),
          ),
          title: Text(title),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Text(subtitle),
          ),
        ),
      ),
    );
  }
}
