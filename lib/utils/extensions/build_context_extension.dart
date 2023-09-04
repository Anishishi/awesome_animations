import 'package:awesome_animations/constants/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

extension BuildContextExtension on BuildContext {
  void pop() {
    GoRouter.of(this).pop();
  }

  Future<void> launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  void pushHome() {
    const appRoute = AppRoutes.home;
    GoRouter.of(this).goNamed(appRoute.name);
  }
}
