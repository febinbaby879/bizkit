import 'package:bizkit/commen/widgets/textform_field.dart';
import 'package:bizkit/core/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonlDetails extends StatelessWidget {
  PersonlDetails({super.key, required this.pageController});

  TextEditingController bloodGroup = TextEditingController();
  TextEditingController homeAddress = TextEditingController();
  TextEditingController birthDaycontroller = TextEditingController();
  TextEditingController accoladesController = TextEditingController();
  TextEditingController datesToReminderController = TextEditingController();

  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        adjustHieght(khieght * .02),
        const Text(
          'Personal Details',
          style: TextStyle(fontSize: 20),
        ),
        adjustHieght(khieght * .02),
        TTextFormField(
          text: 'Home address',
          controller: bloodGroup,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'Blood Group',
          controller: bloodGroup,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'Birthday',
          controller: bloodGroup,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'Accolades',
          controller: bloodGroup,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'Dates To Remember',
          controller: bloodGroup,
          inputType: TextInputType.name,
        ),
        Container(
          padding: const EdgeInsets.only(left: 14),
          width: double.infinity,
          color: textFieldFillColr,
          height: 50,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'ICE Details',
                style: TextStyle(fontSize: 15),
              ),
              Icon(
                Icons.arrow_circle_right,
                color: kwhite,
              )
            ],
          ),
        ),
        adjustHieght(khieght * .02),
        Container(
          padding: const EdgeInsets.only(left: 14, top: 15),
          color: textFieldFillColr,
          width: double.infinity,
          height: 50,
          child: const Text('Photos'),
        ),
        adjustHieght(khieght * .05),
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
              onTap: () => pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.ease,
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
                child: const Center(
                  child: Text('Continue'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
