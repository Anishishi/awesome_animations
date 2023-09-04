import 'package:awesome_animations/constants/styles.dart';
import 'package:awesome_animations/screens/local_widgets/mouse_hover_transition_effect.dart';
import 'package:awesome_animations/utils/extensions/build_context_extension.dart';
import 'package:awesome_animations/utils/widgets/spacer_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Awesome Animation by Flutter"),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          vertical: Styles.spacer * 3,
          horizontal: Styles.spacer * 2,
        ),
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: () {
                context.launchInBrowser(Uri.parse(
                    "https://blog.hubspot.com/website/css-animation-examples"));
              },
              child: const Text(
                  "All the examples introduced by CSS animation examples"),
            ),
          ),
          spacerH8,
          _listTitle("1. Mouse Hover Transition Effect"),
          const MouseHoverTransitionEffect(),
        ],
      ),
    );
  }

  Widget _listTitle(String title) {
    return Text(title);
  }
}
