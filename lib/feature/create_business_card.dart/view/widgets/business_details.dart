import 'package:bizkit/commen/widgets/textform_field.dart';
import 'package:bizkit/core/const.dart';
import 'package:bizkit/fade_transition/fade_transition_in_progressIndicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BusinessDetails extends StatelessWidget {
  BusinessDetails({super.key, required this.pageController});
  final PageController pageController;

  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        adjustHieght(khieght * .02),
        const Text(
          'Business Details',
          style: TextStyle(fontSize: 20),
        ),
        adjustHieght(khieght * .02),
        TTextFormField(
          text: 'Name',
          controller: textEditingController,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'Designation',
          controller: textEditingController,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'Company',
          controller: textEditingController,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'Mail ID',
          controller: textEditingController,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'Mobile number',
          controller: textEditingController,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'Address',
          controller: textEditingController,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'Website link',
          controller: textEditingController,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'Name',
          controller: textEditingController,
          inputType: TextInputType.name,
        ),
        adjustHieght(khieght * .02),
        Row(
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
              onTap: () {
                Navigator.of(context)
                    .push(createPageRoute())
                    .then((_) => pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        ));
              },
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
