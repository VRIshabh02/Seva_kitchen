import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seva_kitchen/Screens/hospitalDetails.dart';
import 'package:seva_kitchen/Screens/howItWorksPage.dart';
import 'package:seva_kitchen/Screens/registrationPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool options = false;

  @override
  Widget build(BuildContext context) {
    int page;

    return Stack(children: [
      Image.asset(
        "assets/images/background1.png",
        // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Text(
                  "Home",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.off(() => HowItWorksPage());
                },
                child: Container(
                  child: Text(
                    "How it works?",
                    style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF905801)),
                  ),
                ),
              ),
            ],
          ),
          // actions: [
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //     children: [
          //       Container(
          //         child: Text(
          //           "Home",
          //           style: GoogleFonts.poppins(
          //               fontSize: 20,
          //               fontWeight: FontWeight.w400,
          //               color: Colors.white),
          //         ),
          //       ),
          //       GestureDetector(
          //         onTap: () {
          //           Get.off(() => HowItWorksPage());
          //         },
          //         child: Container(
          //           child: Text(
          //             "How it works?",
          //             style: GoogleFonts.poppins(
          //                 fontSize: 20,
          //                 fontWeight: FontWeight.w400,
          //                 color: Color(0xFF905801)),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ],
        ),
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // GestureDetector(
              //   onTap:(){
              //     setState(() {
              //       options = !options;
              //     });
              //   },
              //   child: Align(
              //       alignment: Alignment.topLeft,
              //       child: Padding(
              //         padding: const EdgeInsets.all(12.0),
              //         child: Icon(
              //             Icons.menu,
              //           size: 40,
              //           color: Colors.white,
              //         ),
              //       )
              //   ),
              // ),


              const Divider(
                height: 0,
                thickness: 1,
                color: Colors.orangeAccent,
              ),
              const SizedBox(
                height: 90,
              ),

              GestureDetector(
                onTap: () {
                  Get.to(() => HospitalDetails());
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 7.0, left: 50),
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(55)),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    "Hospitals",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Divider(
                                    endIndent: 40,
                                    thickness: 2,
                                    height: 5,
                                  ),
                                ),
                                Text('Join us in seva')
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(35)),
                          child: CircleAvatar(
                            radius: 30,
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

              const SizedBox(
                height: 40,
              ),

              GestureDetector(
                onTap: () {
                  Get.to(() => RegistrationPage(), arguments: [page = 1]);
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 7.0, left: 50),
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(55)),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    "Hospital Canteens",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Divider(
                                    endIndent: 40,
                                    thickness: 2,
                                    height: 5,
                                  ),
                                ),
                                Text('Partner with us')
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(35)),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage(
                              'assets/images/hospitalCanteenLogo1.png',
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              GestureDetector(
                onTap: () {
                  Get.to(() => RegistrationPage(), arguments: [page = 2]);
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 7.0, left: 50),
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(55)),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    "Social Workers",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Divider(
                                    endIndent: 40,
                                    thickness: 2,
                                    height: 5,
                                  ),
                                ),
                                Text('Share a food token')
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent,
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(35)),
                          child: CircleAvatar(backgroundColor: Colors.orangeAccent,
                            radius: 30,foregroundColor: Colors.orangeAccent,
                            backgroundImage: AssetImage(
                              'assets/images/socialWorkersLogo1.png',
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 40,
              ),

              GestureDetector(
                onTap: () {
                  Get.to(() => RegistrationPage(), arguments: [page = 3]);
                },
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 7.0, left: 50),
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(55)),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    "Donors",
                                    style: GoogleFonts.poppins(
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Divider(
                                    endIndent: 40,
                                    thickness: 2,
                                    height: 5,
                                  ),
                                ),
                                Text('Buy a meal for a patient')
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              border: Border.all(color: Colors.white, width: 3),
                              borderRadius: BorderRadius.circular(35)),
                          child: Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: CircleAvatar(backgroundColor: Colors.orangeAccent,
                              radius: 30,foregroundColor: Colors.orangeAccent,
                              backgroundImage: AssetImage(
                                'assets/images/donorLogo2.png',
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    ]);
  }
}
