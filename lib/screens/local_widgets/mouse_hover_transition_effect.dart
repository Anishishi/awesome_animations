import 'package:awesome_animations/constants/textstyles.dart';
import 'package:flutter/material.dart';

class MouseHoverTransitionEffect extends StatefulWidget {
  const MouseHoverTransitionEffect({super.key});

  @override
  State<StatefulWidget> createState() => _MouseHoverTransitionEffectState();
}

class _MouseHoverTransitionEffectState extends State<MouseHoverTransitionEffect>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _curveAnimation;

  bool forwarding = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );

    _controller.addListener(() {
      setState(() {});
    });

    _curveAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: MouseRegion(
            onEnter: (details) {
              setState(() {
                forwarding = true;
              });
              _controller.forward();
            },
            onExit: (details) {
              setState(() {
                forwarding = false;
              });
              _controller.reverse();
            },
            child: Stack(
              children: [
                const Text(
                  "Hover Me",
                  style: TextStyles.largeBold,
                ),
                Positioned.fill(
                  child: FractionallySizedBox(
                    alignment: forwarding
                        ? Alignment.centerLeft
                        : Alignment.centerRight,
                    widthFactor: _curveAnimation.value,
                    child: Container(
                      color: Colors.red.withOpacity(0.4),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
