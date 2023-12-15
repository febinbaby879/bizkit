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
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => widget,
          )),
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
