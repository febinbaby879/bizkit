import 'package:bizkit/core/const.dart';
import 'package:bizkit/feature/create_business_card.dart/view/screens/manuel_entries/personal_detail_screen.dart';
import 'package:bizkit/feature/create_business_card.dart/view/widgets/brocers_and_products.dart';
import 'package:bizkit/feature/create_business_card.dart/view/widgets/business_details.dart';
import 'package:bizkit/feature/create_business_card.dart/view/widgets/company_and_bankdetails.dart';
import 'package:bizkit/feature/create_business_card.dart/view/widgets/company_story.dart';
import 'package:bizkit/feature/create_business_card.dart/view/widgets/logo_story.dart';
import 'package:bizkit/feature/create_business_card.dart/view/widgets/personality.dart';
import 'package:flutter/material.dart';

class LinearProgressIndicatorStarting extends StatefulWidget {
  const LinearProgressIndicatorStarting({Key? key}) : super(key: key);

  @override
  State<LinearProgressIndicatorStarting> createState() =>
      _LinearProgressIndicatorStartingState();
}

class _LinearProgressIndicatorStartingState
    extends State<LinearProgressIndicatorStarting> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Make a Bizkit card'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            LinearProgressIndicator(
              minHeight: 20,
              value: (_currentPage + 1) / 7,
              backgroundColor: textFieldFillColr,
              valueColor: const AlwaysStoppedAnimation<Color>(neonShade),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: [
                  PersonlDetails(pageController: _pageController),
                  BusinessDetails(pageController: _pageController),
                  CompanyAndBankingDetails(pageController: _pageController),
                  LogoStory(pageController: _pageController),
                  CompanyStory(pageController: _pageController),
                  Personality(pageController: _pageController),
                  BrochersAndProducts(pageController: _pageController),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
