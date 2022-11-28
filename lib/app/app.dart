import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import '../UI/signin/signin_view.dart';

@StackedApp(
  logger: StackedLogger(),
  routes: [
    AdaptiveRoute(page: SignInView, initial: true),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
  ],
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
