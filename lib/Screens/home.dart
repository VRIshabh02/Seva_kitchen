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
        backgroundColor: Colors.transparent,
        body: Stack(
          children:[

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

              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Text(
                      "Home",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.off(()=> HowItWorksPage());
                    },
                    child: Container(
                      child: Text(
                        "How it works?",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w400, color: Color(
                            0xFF905801)),
                      ),
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

              GestureDetector(
                onTap: (){
                  Get.to(()=> HospitalDetails());
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
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius:
                                  BorderRadius.only(topRight: Radius.circular(55)),
                            ),
                            child: Column(
                              children: [
                                Text("Hospitals", style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Divider(
                                    endIndent: 40,
                                    thickness: 2,
                                    height: 10,
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
                onTap: (){
                  Get.to(()=> RegistrationPage(), arguments: [page=1]);
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
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius:
                                  BorderRadius.only(topRight: Radius.circular(55)),
                            ),
                            child: Column(
                              children: [
                                Text("Hospital Canteens", style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Divider(
                                    endIndent: 40,
                                    thickness: 2,
                                    height: 10,
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
                onTap: (){
                  Get.to(()=> RegistrationPage(), arguments: [page = 2]);
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
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius:
                                  BorderRadius.only(topRight: Radius.circular(55)),
                            ),
                            child: Column(
                              children: [
                                Text("Social Workers", style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Divider(
                                    endIndent: 40,
                                    thickness: 2,
                                    height: 10,
                                  ),
                                ),
                                Text('Share a food tocken')
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
                onTap: (){
                  Get.to(()=> RegistrationPage(), arguments: [page = 3]);
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
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius:
                                  BorderRadius.only(topRight: Radius.circular(55)),
                            ),
                            child: Column(
                              children: [
                                Text("Donors", style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Divider(
                                    endIndent: 40,
                                    thickness: 2,
                                    height: 10,
                                  ),
                                ),
                                Text('Buy a meal for a patient')
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
              )
            ],
          ),
    ]
        ),
      ),
    ]);
  }
}
