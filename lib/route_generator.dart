import 'package:flutter/material.dart';
// my imports
import 'src/app.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;
    switch (settings.name) {
      case '/Splash':
        return MaterialPageRoute(builder: (_) => SplashPage());
      case '/dashboard':
        return MaterialPageRoute(
            builder: (_) => DashboardPage(currentTab: args));
      case '/signUp':
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case '/MobileVerification':
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case '/MobileVerification2':
        return MaterialPageRoute(builder: (_) => SignUpPage());
      case '/signIn':
        return MaterialPageRoute(builder: (_) => SignInPage());
      case '/pinCodeVerification':
        return MaterialPageRoute(builder: (_) => PinCodeVerificationPage());
      case '/ForgetPassword':
        return MaterialPageRoute(builder: (_) => RestorePasswordPage());
      case '/deliveryTimeline':
        return MaterialPageRoute(builder: (_) => DeliveryTimelinePage());
      case '/deliveryStepperPage':
        return MaterialPageRoute(builder: (_) => DeliveryStepperPage());
//      case '/productDetails':
//        return MaterialPageRoute( builder: (_) => ProductDetialsPage(routeArgument: args as RouteArgument));
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case '/aboutApp':
        return MaterialPageRoute(builder: (_) => AboutAppPage());
//      case '/checkOut':
//        return MaterialPageRoute(builder: (_) => CheckoutPage(routeArgument: args as RouteArgument));
      case '/currentOrders':
        return MaterialPageRoute(builder: (_) => CurrentOrdersPage());
      case '/completedOrders':
        return MaterialPageRoute(builder: (_) => CompletedOrdersPage());
      case '/orders':
        return MaterialPageRoute(builder: (_) => OrdersPage());

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return MaterialPageRoute(builder: (_) => DashboardPage());
    }
  }
}
