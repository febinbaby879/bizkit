import 'package:bizkit/core/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Personality extends StatelessWidget {
  const Personality({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        adjustHieght(khieght * .02),
        const Text(
          'Personality',
          style: TextStyle(fontSize: 20),
        ),
        adjustHieght(khieght * .04),
        Container(
          color: textFieldFillColr,
          child: const TextField(
            maxLines: 25,
            decoration: InputDecoration(
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              hintText:
                  "Your logo has been made with so much of thoughts and is designed to inspire. I'm sure that there is a story/ deep meaning behind your logo. This is one of the few places where you can impress the receiver of your card about the foundation of your logo",
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              contentPadding: EdgeInsets.all(15.0),
            ),
          ),
        ),
        adjustHieght(khieght * .05),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () => pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease,
              ),
              child: Container(
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
            ),
            InkWell(
              onTap: () => pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease),
              child: Container(
                decoration: const BoxDecoration(
                  color: neonShade,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                width: 123.dm,
                height: 49.dm,
                child: const Center(
                  child: Text('Continue'),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
