import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seva_kitchen/Screens/donationCompletePage.dart';

class DonateToHospital extends StatefulWidget {
  const DonateToHospital({Key? key}) : super(key: key);

  @override
  State<DonateToHospital> createState() => _DonateToHospitalState();
}

class _DonateToHospitalState extends State<DonateToHospital> {
  bool options = false;
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
        body: Stack(
          children:[ Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  options = !options;
                });
              },
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.menu,
                      size: 40,
                      color: Colors.white,
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 30,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Colors.orangeAccent,),
                    Text("Hospital 3"),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 270,
                width: 280,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/images/hospitalPhoto.png')),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white, width: 2)
                ),
                  // child: Image.asset('assets/images/hospitalPhoto.png', height: 280,)
                ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=> DonateToHospital());
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.orangeAccent
                    ),
                    child: Center(child: Text("Select Food")),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                Get.to(()=> DonateConplete());
              },
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 35,
                    width: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white
                    ),
                    child: Center(child: Text("Donate through Donatekart",
                      style: GoogleFonts.poppins(color: Colors.orangeAccent),
                    )
                    ),
                  ),
                ),
              ),
            ),
          ]),
            options == true ?
            Positioned(
              top:100 ,
              left: 50,
              child: Container(
                height: 130,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Your Donations",
                        style: GoogleFonts.poppins(color: Colors.black, fontSize: 10),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Tell your Friends",
                        style: GoogleFonts.poppins(color: Colors.black, fontSize: 10),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Contact Us",
                        style: GoogleFonts.poppins(color: Colors.black, fontSize: 10),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Logout",
                        style: GoogleFonts.poppins(color: Colors.black, fontSize: 10),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ),
            ):
            Container(),
          ]
        ),
      ),
    ]);
  }
}
