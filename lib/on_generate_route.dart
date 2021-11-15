import 'package:flutter/material.dart';
import 'package:vipani/features/presentation/pages/addinfoemail.dart';
import 'package:vipani/features/presentation/pages/changepassword.dart';
import 'package:vipani/features/presentation/pages/flow.dart';
import 'package:vipani/features/presentation/widgets/shoppreview.dart';
import 'package:vipani/features/presentation/pages/home_screen.dart';
import 'package:vipani/features/presentation/pages/landing.dart';
import 'package:vipani/features/presentation/pages/loginemail.dart';
import 'package:vipani/features/presentation/pages/logingoogle.dart';
import 'package:vipani/features/presentation/pages/namepage.dart';
import 'package:vipani/features/presentation/pages/passwordpage.dart';
import 'package:vipani/features/presentation/pages/resetpassword.dart';
import 'package:vipani/features/presentation/pages/signinwithnumber.dart';
import 'package:vipani/features/presentation/pages/verifynumber.dart';
import 'package:vipani/features/presentation/widgets/bottomnavigation.dart';
import 'package:vipani/page_const.dart';

class OnGenerateRoute {
  static Route<dynamic> route(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case PageConst.flowPage:
        {
          return materialBuilder(
            widget: FlowPage(),
          );
        }
      case PageConst.landingPage:
        {
          return materialBuilder(
            widget: LandingPage(),
          );
        }
      case PageConst.logingooglePage:
        {
          return materialBuilder(
            widget: LoginGoogle(),
          );
        }
      case PageConst.namePage:
        {
          return materialBuilder(
            widget: NamePage(),
          );
        }
      case PageConst.mobilesigninPage:
        {
          return materialBuilder(
            widget: MobileSignIn(),
          );
        }
      case PageConst.gamilLoginPage:
        {
          return materialBuilder(
            widget: GmailLogin(),
          );
        }
      case PageConst.passwordPage:
        {
          return materialBuilder(
            widget: PasswordPage(),
          );
        }
      case PageConst.resetPassword:
        {
          return materialBuilder(
            widget: ResetPassword(),
          );
        }
      case PageConst.changePassword:
        {
          return materialBuilder(
            widget: ChangePassword(),
          );
        }
      case PageConst.addinfoPage:
        {
          return materialBuilder(
            widget: AddInfo(),
          );
        }
      case PageConst.verifynumberPage:
        {
          return materialBuilder(
            widget: VerifyNumberPage(),
          );
        }
      case PageConst.homePage:
        {
          return materialBuilder(
            widget: BottomNavigationWidget(),
          );
        }
      default:
        return materialBuilder(widget: ErrorPage());
    }
  }
}

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Error Page"),
      ),
      body: Center(
        child: Text("Error Page"),
      ),
    );
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}
