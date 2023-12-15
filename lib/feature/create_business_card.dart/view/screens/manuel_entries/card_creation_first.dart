import 'package:bizkit/commen/widgets/textform_field.dart';
import 'package:bizkit/core/const.dart';
import 'package:bizkit/feature/create_business_card.dart/view/screens/manuel_entries/progress_indicator_start.dart';
import 'package:bizkit/feature/create_business_card.dart/view/widgets/last_skip_and_aontinue.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode focusScope = FocusScope.of(context);
        if (!focusScope.hasPrimaryFocus) {
          focusScope.unfocus();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Make a Bizkit Card'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Center(
              child: Column(
                children: [
                  const Stack(
                    children: [
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage(
                          'asset/images/profileCircle.png',
                        ),
                      ),
                      Positioned(
                        bottom: 17,
                        right: 3,
                        child: CircleAvatar(
                          radius: 13,
                          backgroundImage: AssetImage(
                            'asset/images/profilestackcircle.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                  TTextFormField(
                    text: 'Name',
                    controller: nameController,
                    inputType: TextInputType.emailAddress,
                    obscureText: false,
                  ),
                  TTextFormField(
                    text: 'Email ID',
                    controller: nameController,
                    inputType: TextInputType.emailAddress,
                    obscureText: false,
                  ),
                  TTextFormField(
                    text: 'Phone number',
                    controller: nameController,
                    inputType: TextInputType.emailAddress,
                    obscureText: false,
                  ),
                  TTextFormField(
                    text: 'Technolegy',
                    controller: nameController,
                    inputType: TextInputType.emailAddress,
                    obscureText: false,
                  ),
                  TTextFormField(
                    text: 'Campany',
                    controller: nameController,
                    inputType: TextInputType.emailAddress,
                    obscureText: false,
                  ),
                  adjustHieght(khieght * .03),
                  const LastSkipContinueButtons(
                    widget: LinearProgressIndicatorStarting(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
