import 'package:flutter/material.dart';

class CustomTabs extends StatelessWidget {
  const CustomTabs({Key? key, required this.name}) : super(key: key);

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            name!,
          ),
        ),
      ),
    );
  }
}
