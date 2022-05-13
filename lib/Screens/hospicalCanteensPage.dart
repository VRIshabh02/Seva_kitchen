import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seva_kitchen/Screens/foodServedPage.dart';

class HospitalCanteensPage extends StatelessWidget {
  const HospitalCanteensPage({Key? key}) : super(key: key);

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
        body: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 300,
                  height: 30,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(36)),
                  child: TextFormField(
                    cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration.collapsed(
                      hintStyle: TextStyle(
                          color: Colors.orangeAccent,
                          fontSize: 12
                      ),
                      hintText: 'Enter Token No.',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 35,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.orangeAccent
                  ),
                  child: Center(child: Text("Validate")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Food Token No. - 1234",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              Image.asset('assets/images/foodServinfLogo.png'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Please serve breakfast for",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 120,
                  height: 30,
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(36)),
                  child: Text('Rs. 000/-')
                ),
              ),
              Image.asset('assets/images/idProofSmaple.png', height: 150,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 60,
                  decoration: BoxDecoration(
                    // gradient: LinearGradient(begin: Alignment.topLeft,
                    //   end: Alignment(0.8, 1),
                    //   colors: <Color>[
                    //     Color(0xff1f005c),
                    //     Color(0xff5b0060),
                    //     Color(0xff870160),
                    //     Color(0xffac255e),
                    //     Color(0xffca485c),
                    //     Color(0xffe16b5c),
                    //     Color(0xfff39060),
                    //     Color(0xffffb56b),
                    //   ], // Gradient from https://learnui.design/tools/gradient-generator.html
                    //   tileMode: TileMode.mirror,),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(36)
                  ),
                  child: Icon(Icons.camera_alt_outlined, color: Colors.orangeAccent,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                child: Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white
                  ),
                  child: Text("Valid till: 09/04/2022, 04:00pm",textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(color: Colors.orangeAccent, fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Get.off(()=> FoodServedPage());
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.orangeAccent
                    ),
                    child: Center(child: Text("Submit")),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ]
    );
  }
}
