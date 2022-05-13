import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seva_kitchen/Screens/home.dart';

class HowItWorksPage extends StatelessWidget {
  const HowItWorksPage({Key? key}) : super(key: key);

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
          body: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.menu,
                      size: 40,
                      color: Colors.white,
                    ),
                  )
              ),
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: (){
                      Get.off(()=> MyHomePage());
                    },
                    child: Container(
                      child: Text(
                        "Home",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      "How it works",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400, color: Colors.orangeAccent),
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 0,
                thickness: 1,
                color: Colors.orangeAccent,
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 13.0, left: 40),
                          child: Container(
                            height: 20,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.only(topRight: Radius.circular(55), bottomRight: Radius.circular(55)),
                            ),
                            child: Column(
                              children: [
                                Text("Hospitals"),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(35)),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                              'assets/images/hospitalLogo.png',
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
              Text('Description', style: GoogleFonts.poppins(color: Colors.white),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 13.0, left: 40),
                          child: Container(
                            height: 20,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.only(topRight: Radius.circular(55), bottomRight: Radius.circular(55)),
                            ),
                            child: Column(
                              children: [
                                Text("Hospitals"),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(35)),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                              'assets/images/hospitalLogo.png',
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
              Text('Description', style: GoogleFonts.poppins(color: Colors.white),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 13.0, left: 40),
                          child: Container(
                            height: 20,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.only(topRight: Radius.circular(55), bottomRight: Radius.circular(55)),
                            ),
                            child: Column(
                              children: [
                                Text("Hospitals"),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(35)),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                              'assets/images/hospitalLogo.png',
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
              Text('Description', style: GoogleFonts.poppins(color: Colors.white),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 13.0, left: 40),
                          child: Container(
                            height: 20,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadius.only(topRight: Radius.circular(55), bottomRight: Radius.circular(55)),
                            ),
                            child: Column(
                              children: [
                                Text("Hospitals"),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(35)),
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage(
                              'assets/images/hospitalLogo.png',
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),
              Text('Description', style: GoogleFonts.poppins(color: Colors.white),),
            ],
          ),
        ),
    ]
    );
  }
}
