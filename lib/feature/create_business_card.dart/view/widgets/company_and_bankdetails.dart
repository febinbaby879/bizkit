import 'package:bizkit/commen/widgets/textform_field.dart';
import 'package:bizkit/core/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyAndBankingDetails extends StatelessWidget {
  CompanyAndBankingDetails({super.key, required this.pageController});

  final PageController pageController;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        adjustHieght(khieght * .02),
        const Text(
          'Company & Banking Details',
          style: TextStyle(fontSize: 20),
        ),
        adjustHieght(khieght * .02),
        TTextFormField(
          text: 'Name of the company',
          controller: textEditingController,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'Bank Details',
          controller: textEditingController,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'UPI Details',
          controller: textEditingController,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'GST Membership Details',
          controller: textEditingController,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'Accredition Details',
          controller: textEditingController,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'Branch Offices',
          controller: textEditingController,
          inputType: TextInputType.name,
        ),
        TTextFormField(
          text: 'Products',
          controller: textEditingController,
          inputType: TextInputType.name,
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
            )
          ],
        ),
      ],
    );
  }
}
