import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:true_vocation_mobile/domain/model/single_notifier.dart';

import 'internal/application.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider<SingleNotifier>(create: (_) => SingleNotifier(),)
    ],
    child: const Application(),
  ));
}
