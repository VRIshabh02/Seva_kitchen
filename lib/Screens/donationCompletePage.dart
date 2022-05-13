import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DonateConplete extends StatelessWidget {
  const DonateConplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Image.asset(
          "assets/images/background1.png",
          // height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/logo.png', height: 150,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Thank you',
                  style: GoogleFonts.poppins(fontSize: 25, color: Colors.white),),
              ),
              Text('for the donation.',
                  style: GoogleFonts.poppins(fontSize: 20, color: Colors.white)
              ),
            ],
          ),
        ),
      ),
    ]
    );
  }
}
