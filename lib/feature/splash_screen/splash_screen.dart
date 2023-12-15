import 'package:animate_do/animate_do.dart';
import 'package:bizkit/feature/authentication/view/screens/login_screen.dart';
import 'package:bizkit/feature/business_card_preview/view/screen/preview_main_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _navigateToSignInPage(context);
    return Scaffold(
      body: FadeInUp(
        duration: const Duration(milliseconds: 800),
        delay: const Duration(milliseconds: 800),
        child: Align(
          alignment: Alignment.center,
          child: Image.asset('asset/images/Bizkit.png'),
        ),
      ),
    );
  }

  void _navigateToSignInPage(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.pushReplacement(context, route());
    });
  }

  Route route() {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 1500),
      pageBuilder: (context, animation, secondaryAnimation) =>
          const PreviewMainScreen(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;
        var tween = Tween(begin: begin, end: end).chain(
          CurveTween(curve: curve),
        );
        var offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
