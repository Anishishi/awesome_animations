import 'package:awesome_animations/constants/local_keys.dart';
import 'package:awesome_animations/providers/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AwesomeApp extends ConsumerWidget {
  const AwesomeApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      key: materialAppKey,
      routerConfig: router,
      title: 'Kachaka',
      localizationsDelegates: const [
        DefaultMaterialLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      theme: ThemeData(),
    );
  }
}
