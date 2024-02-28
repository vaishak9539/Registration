import 'package:flutter/material.dart';
import 'package:login_registration/welcome.dart';

class Splash1 extends StatefulWidget {
  const Splash1({super.key});

  @override
  State<Splash1> createState() => _Splash1State();
}

class _Splash1State extends State<Splash1> {
  @override
  void initState() {
    goToWelcome();
    super.initState();
  }

  void goToWelcome() async {
    await Future.delayed(Duration(seconds: 2));
    Navigator.push(context, MaterialPageRoute(builder: (ctx) {
      return Welcome();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          child:
              Image.asset("assets/images/vector-butterfly_fy4jh_Ld_PMNW.jpg"),
        ),
      ),
    );
  }
}
