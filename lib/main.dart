import 'package:flutter/material.dart';
import 'UI/onboarding/onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: PageView(
          controller: controller,
          children: <Widget>[
            OnboardingView(
                img: 'assets/images/train.png',
                heading: 'First Class Security',
                text1:
                    'We provide first class security on all our transportation',
                text2: 'scheme which is inline with our core value system',
                text3: 'to give the masses a seamless experience ',
                parameterValue: false,
                buttonvalue: true,
                nextOnPress: () {
                  if (controller.hasClients) {
                    controller.animateToPage(
                      1,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                skipOnPress: () {
                  if (controller.hasClients) {
                    controller.animateToPage(
                      2,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                backNextPress: () {}),
            OnboardingView(
                img: 'assets/images/amico.png',
                heading: 'Cost Effective',
                text1: 'We provide affordable price for all our transport',
                text2: 'scheme which has been subsidized for the masses',
                text3: 'to give them equal right and access ',
                parameterValue: false,
                buttonvalue: true,
                nextOnPress: () {
                  if (controller.hasClients) {
                    controller.animateToPage(
                      2,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                skipOnPress: () {
                  if (controller.hasClients) {
                    controller.animateToPage(
                      2,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                backNextPress: () {
                  if (controller.hasClients) {
                    controller.animateToPage(
                      -1,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                }),
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
                backNextPress: () {
                  if (controller.hasClients) {
                    controller.animateToPage(
                      1,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                })
          ],
          //print(controller.currentPage);
        ),
      ),
    );
  }
}
