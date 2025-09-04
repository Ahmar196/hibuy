import 'package:flutter/material.dart';
import 'package:hibuy/res/routes/routes_name.dart';
import 'package:hibuy/view/bottom_navigation_bar/bottom_nab_bar.dart';
import 'package:hibuy/view/dashboard_screen/addproduct_screen.dart';
import 'package:hibuy/view/dashboard_screen/dashboard_home_screen.dart';
import 'package:hibuy/view/profile_information.dart/bank_account_screen.dart';
import 'package:hibuy/view/profile_information.dart/business_verification_screen.dart';
import 'package:hibuy/view/profile_information.dart/document_verification_screen.dart';
import 'package:hibuy/view/profile_information.dart/kyc_main.dart';
import 'package:hibuy/view/profile_information.dart/personal_info_screen.dart';
import 'package:hibuy/view/profile_information.dart/store_info_screen.dart';
import 'package:hibuy/view/auth/select_type.dart';
import 'package:hibuy/view/auth/signin_screen.dart';
import 'package:hibuy/view/auth/signup_text.dart';
import 'package:hibuy/view/auth/splash_screen.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // Authcation
      case RoutesName.splash:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SplashScreen(),
        );
      case RoutesName.select_type:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SelectType(),
        );
      case RoutesName.SigninScreen:
      return MaterialPageRoute(builder: (BuildContext context) =>  SigninScreen());
       case RoutesName.SignupScreen:
      return MaterialPageRoute(builder: (BuildContext context) =>  SignupScreen());
      // profile
       case RoutesName.KycMain:
      return MaterialPageRoute(builder: (BuildContext context) =>  KycMain());
        case RoutesName.personalinformation:
      return MaterialPageRoute(builder: (BuildContext context) =>  PersonalInfoScreen());
        case RoutesName.BankAccountVerification:
      return MaterialPageRoute(builder: (BuildContext context) =>  BankAccountScreen());
        case RoutesName.BusinessVerification:
      return MaterialPageRoute(builder: (BuildContext context) =>  BusinessVerificationScreen());
        case RoutesName.DocumentVerification:
      return MaterialPageRoute(builder: (BuildContext context) =>  DocumentVerificationScreen());
        case RoutesName.MyStoreInformation:
      return MaterialPageRoute(builder: (BuildContext context) =>  StoreInfoScreen() );
        case RoutesName.bottomnabBar:
      return MaterialPageRoute(builder: (BuildContext context) =>  BottomNabBar() );
        case RoutesName.addproductscreen:
      return MaterialPageRoute(builder: (BuildContext context) =>  AddproductScreen() );

      default:
        return MaterialPageRoute(
          builder: (_) {
            return const Scaffold(
              body: Center(child: Text('No route defined')),
            );
          },
        );
    }
  }
}
