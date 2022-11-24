import 'package:flutter/material.dart';
import '../UI/onboarding/onboarding_view.dart';

List<Widget> onBoardingList = <Widget>[
  OnboardingView(
      img: 'assets/images/train.png',
      heading: 'First Class Security',
      text1: 'We provide first class security on all our transportation',
      text2: 'scheme which is inline with our core value system',
      text3: 'to give the masses a seamless experience ',
      parameterValue: false,
      buttonvalue: true,
      nextOnPress: () {},
      skipOnPress: () {},
      backNextPress: () {}),
  OnboardingView(
      img: 'assets/images/amico.png',
      heading: 'Cost Effective',
      text1: 'We provide affordable price for all our transport',
      text2: 'scheme which has been subsidized for the masses',
      text3: 'to give them equal right and access ',
      parameterValue: false,
      buttonvalue: true,
      nextOnPress: () {},
      skipOnPress: () {},
      backNextPress: () {}),
  OnboardingView(
      img: 'assets/images/amico.png',
      heading: 'Reliable and efficient ',
      text1: 'We provide relaible and efficient system for',
      text2: 'individuals to move large scale good from one',
      text3: 'location to another effortlessly',
      parameterValue: true,
      buttonvalue: false,
      nextOnPress: () {},
      skipOnPress: () {},
      backNextPress: () {})
];

void listLength() {
  print(onBoardingList.length);
}

int onboarding() {
  int i = 0;
  for (i; i < onBoardingList.length; i++) {
    print(i);
  }
  print('i am the value $i');
  return i;
}
