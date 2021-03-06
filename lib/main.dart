import 'package:flutter/material.dart';
import 'package:global_configuration/global_configuration.dart';
import 'package:provider/provider.dart';
// my imports
import 'src/app.dart';
import 'route_generator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GlobalConfiguration().loadFromAsset("configurations");
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return AppProvider();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Orange Fruits',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        initialRoute: '/shimmerEffect',
        routes: {
          '/' : (context) => SplashPage(),
          '/dashboard': (context) => DashboardPage(),
          '/home': (context) => HomePage(),
          '/shimmerEffect': (context) => ShimmerEffectPage(),
          '/signUp': (context) => SignUpPage(),
          '/signIn': (context) => SignInPage(),
          '/pinCodeVerification': (context) => PinCodeVerificationPage(),
          '/ForgetPassword': (context) => RestorePasswordPage(),
          '/deliveryTimeline': (context) => DeliveryTimelinePage(),
          '/deliveryStepperPage': (context) => DeliveryStepperPage(),
          '/productDetails': (context) => ProductDetialsPage(),
          '/profile': (context) => ProfilePage(),
          '/aboutApp': (context) => AboutAppPage(),
          '/checkout': (context) => CheckoutPage(),
          '/currentOrders': (context) => CurrentOrdersPage(),
          '/completedOrders': (context) => CompletedOrdersPage(),
          '/orders': (context) => OrdersPage(),
        },
      ),
    );

  }
}

