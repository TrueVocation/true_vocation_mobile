import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:true_vocation_mobile/domain/model/university.dart';

class RefreshWidget extends StatefulWidget {
  const RefreshWidget({Key? key, required this.controller}) : super(key: key);

  final RefreshController controller;

  @override
  State<RefreshWidget> createState() => _RefreshWidgetState();
}

class _RefreshWidgetState extends State<RefreshWidget> {
  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: widget.controller,

    );
  }
}
