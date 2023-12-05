import 'package:flutter/material.dart';
import 'package:flutter_application_1/color_theme.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter_application_1/Page/login_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) => SafeArea(
    child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: '"Taray Lang Awan Danag"',
          body: '"Run without worrying", that is our motto.Just run and feel the wind in your back.',
          image: buildImage('assets/igorot_trail_runner.jpg'),
          decoration: getPageDecoration(),
        ),

        PageViewModel(
          title: 'WE TRACK YOUR RUN',
          body: "Don't get lost on the way and stay on track. Just follow the what is on APP",
          image: buildImage('assets/worldgps.png'),
          decoration: getPageDecoration(),
        ),

        PageViewModel(
          title: 'START YOUR RUN NOW',
          body:'Godspeed',
          image: buildImage('assets/tagtag_icon.png'),
          decoration: getPageDecoration(),
        ),
      ],
      done: const Text('Finish', style: TextStyle(fontWeight: FontWeight.w600)),
      onDone:() => goToLogin(context),
      showSkipButton: true,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      dotsDecorator: getDotDecoration(),
      globalBackgroundColor: primaryColor,
      ),
    );

  void goToLogin(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const LoginPage()),
      );
      
  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
        color: Color(0xFFBDBDBD),
        activeColor: Colors.orange,
        size: Size(10, 10),
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
      );

  PageDecoration getPageDecoration() => const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 20),
        //descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}