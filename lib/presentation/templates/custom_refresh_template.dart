import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class RefreshTemplate extends StatefulWidget {
  const RefreshTemplate({
    Key? key,
    required this.controller,
    this.onRefresh,
    this.onLoading,
    this.child,
  }) : super(key: key);

  final RefreshController controller;
  final Function? onRefresh;
  final Function? onLoading;
  final Widget? child;

  @override
  State<RefreshTemplate> createState() => _RefreshTemplateState();
}

class _RefreshTemplateState extends State<RefreshTemplate> {
  get onLoading => widget.onLoading;
  get onRefresh => widget.onRefresh;

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      controller: widget.controller,
      onLoading: onLoading,
      onRefresh: onRefresh,
      child: widget.child,
      enablePullUp: true,
    );
  }
}
