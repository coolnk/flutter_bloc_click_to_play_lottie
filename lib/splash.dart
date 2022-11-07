import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: (5)),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 40, fontWeight: FontWeight.bold);
    return Scaffold(
        // appBar: AppBar(
        //   title:
        //       Text('मेरा कथाहरू', style: GoogleFonts.baloo2(textStyle: style)),
        //   centerTitle: true,
        //   backgroundColor: Colors.cyan,
        // ),
        body: Center(
      child: Lottie.network(
        'https://assets2.lottiefiles.com/packages/lf20_uBcVylM68q.json',
        controller: _controller,
        height: MediaQuery.of(context).size.height * 1,
        animate: true,
        onLoaded: (composition) {
          _controller
            ..duration = composition.duration
            ..forward().whenComplete(() => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                ));
        },
      ),
    ));
  }
}
