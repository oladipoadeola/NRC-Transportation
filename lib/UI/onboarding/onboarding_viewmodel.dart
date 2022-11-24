import 'package:stacked/stacked.dart';
import '../../model/onboarding_model.dart';

class OnboardingViewModel extends BaseViewModel {
  int onboarding() {
    int i = 0;
    for (i; i < onBoardingList.length; i++) {
      print(i);
    }
    return i;
  }
}
