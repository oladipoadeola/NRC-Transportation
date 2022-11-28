import 'package:flutter/material.dart';
import '../../component/hot_button.dart';
import '../../component/normal_button.dart';
import '../../model/onboarding_model.dart';
import '../UIHelper/spaceHelper.dart';
import 'package:stacked/stacked.dart';
import 'onboarding_viewmodel.dart';

class OnboardingView extends StatelessWidget {
  String img;
  String heading;
  String text1;
  String text2;
  String text3;
  bool parameterValue;
  bool buttonvalue;
  VoidCallback nextOnPress;
  VoidCallback skipOnPress;
  VoidCallback backNextPress;
  OnboardingView({
    required this.img,
    required this.heading,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.parameterValue,
    required this.buttonvalue,
    required this.nextOnPress,
    required this.skipOnPress,
    required this.backNextPress,
  });
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnboardingViewModel>.reactive(
      viewModelBuilder: () => OnboardingViewModel(),
      builder: (context, viewModel, child) => SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //
              ListTile(
                leading: Image.asset('assets/images/nrc.png'),
                trailing: GestureDetector(
                  onTap: backNextPress,
                  child: const Text(
                    'Back',
                    style: TextStyle(
                      color: Color(0xFF979797),
                    ),
                  ),
                ),
              ),
              SpaceHelper(height: 20.0),
              Image.asset(
                img,
                width: 350.0,
              ),
              SpaceHelper(height: 20.0),
              Text(
                heading,
                style: const TextStyle(
                  color: Color(0xFF374E59),
                  fontWeight: FontWeight.w800,
                ),
              ),
              SpaceHelper(height: 20.0),
              Text(
                text1,
                style: const TextStyle(
                    color: Color(0xFF374E59),
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0),
              ),
              SpaceHelper(height: 10.0),
              Text(
                text2,
                style: const TextStyle(
                    color: Color(0xFF374E59),
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0),
              ),
              SpaceHelper(height: 10.0),
              Text(
                text3,
                style: const TextStyle(
                    color: Color(0xFF374E59),
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0),
              ),

              Visibility(
                visible: buttonvalue,
                child: Padding(
                  padding: const EdgeInsets.only(top: 200.0, left: 10.0),
                  child: Row(
                    children: [
                      NormalButton(onPressed: skipOnPress),
                      Padding(
                        padding: const EdgeInsets.only(left: 200.0),
                        child: HotButton(
                          buttonHeight: 40,
                          onPressed: nextOnPress,
                          buttonText: 'Next',
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.only(top: 150.0, left: 20.0, right: 20.0),
                child: Visibility(
                  visible: parameterValue,
                  child: SizedBox(
                    child: HotButton(
                      buttonHeight: 50,
                      onPressed: () {
                        viewModel.gotoSignIn();
                        //print('i was clicked');
                      },
                      buttonText: 'Let’s get you started',
                    ),
                    width: double.infinity,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
