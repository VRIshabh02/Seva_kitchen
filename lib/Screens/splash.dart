import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seva_kitchen/Screens/home.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/splash.png'), fit: BoxFit.cover,

              )
            ),
          // child: Image.asset('assets/images/logo.png', height: 150,)
          // // Image.asset('assets/images/splash.png', fit: BoxFit.cover,
          // //   height: MediaQuery.of(context).size.height,
          // //   width: MediaQuery.of(context).size.width,
          // // ),

        ),
      ),
    );
  }
}

_navigatetohome()async{

  await Future.delayed(Duration(milliseconds: 3500));


    Get.offAll(MyHomePage());


}
