import 'package:flutter/material.dart';
import 'package:true_vocation_mobile/utils/illustrations.dart';

class CustomIllustration extends StatelessWidget {
  const CustomIllustration({Key? key, this.preset}) : super(key: key);

  final String? preset;

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppIllustration.way+preset!);
  }
}
