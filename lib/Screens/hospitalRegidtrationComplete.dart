import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HospitalRegistrationComplete extends StatelessWidget {
  const HospitalRegistrationComplete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "assets/images/background1.png",
        // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.fill,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(size: 40, color: Colors.white),
          elevation: 0,
          leading: Icon(Icons.menu),
        ),
//         drawer: Drawer(
// backgroundColor: Colors.transparent,elevation: 0,
//         ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Align(
              //     alignment: Alignment.topLeft,
              //     child: Padding(
              //       padding: const EdgeInsets.all(12.0),
              //       child: Icon(
              //         Icons.menu,
              //         size: 40,
              //         color: Colors.white,
              //       ),
              //     )),

              Image.asset(
                'assets/images/logo.png',
                height: 150,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Thank you',
                  style: GoogleFonts.poppins(color: Colors.orangeAccent, fontSize: 30),
                ),
              ),
              Text(
                'The request will be\n processed within\n 24-48 hours',textAlign: TextAlign.center,
                style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
              )
            ],
          ),
        ),
      ),
    ]);
  }
}
