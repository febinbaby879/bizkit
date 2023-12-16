import 'package:bizkit/core/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LastSkipContinueButtons extends StatelessWidget {
  const LastSkipContinueButtons({
    required this.widget,
    super.key,
  });
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: neonShade),
            borderRadius: const BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          width: 123.dm,
          height: 49.dm,
          child: const Center(child: Text('Skip')),
        ),
        InkWell(
          onTap: () => Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => widget,
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                const begin = 0.0;
                const end = 1.0;
                const curve = Curves.easeInOut;

                final tween = Tween(begin: begin, end: end).chain(
                  CurveTween(curve: curve),
                );

                var opacityAnimation = animation.drive(tween);

                return FadeTransition(
                  opacity: opacityAnimation,
                  child: child,
                );
              },
              transitionDuration: const Duration(milliseconds: 800),
              reverseTransitionDuration: const Duration(milliseconds: 800),
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(
              color: neonShade,
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            width: 123.dm,
            height: 49.dm,
            child: const Center(child: Text('Continue')),
          ),
        ),
      ],
    );
  }
}
