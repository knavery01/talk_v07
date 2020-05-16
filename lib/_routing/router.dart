import 'package:flutter/material.dart';
import 'package:flutter_social/_routing/routes.dart';

import 'package:flutter_social/views/home.dart';
import 'package:flutter_social/views/landing.dart';
import 'package:flutter_social/views/tabs/languages.dart';
import 'package:flutter_social/views/login.dart';
import 'package:flutter_social/views/tabs/edit.dart';
import 'package:flutter_social/views/register.dart';
import 'package:flutter_social/views/reset_password.dart';


Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case landingViewRoute:
      return MaterialPageRoute(builder: (context) => LandingPage());
    case homeViewRoute:
      return MaterialPageRoute(builder: (context) => HomePage());
    case languagesViewRoute:
      return MaterialPageRoute(builder: (context) => LanguagesPage());
    case loginViewRoute:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case registerViewRoute:
      return MaterialPageRoute(builder: (context) => RegisterPage());
    case resetPasswordViewRoute:
      return MaterialPageRoute(builder: (context) => ResetPasswordPage());
    case EditViewRoute:
      return MaterialPageRoute(builder: (context) => EditProfile());
      break;
    default:
      return MaterialPageRoute(builder: (context) => LandingPage());
  }
}
