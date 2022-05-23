import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seva_kitchen/Screens/DonorPage.dart';
import 'package:seva_kitchen/Screens/hospicalCanteensPage.dart';
import 'package:seva_kitchen/Screens/logInPage.dart';
import 'package:seva_kitchen/Screens/socialWorkersPage.dart';

class RegistrationPage extends StatelessWidget {
   RegistrationPage({Key? key}) : super(key: key);

  var otp;
  @override
  Widget build(BuildContext context) {
    print('${Get.arguments[0]}');
    int page = Get.arguments[0];
    print('$page');
    return Stack(children: [
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
                child: Image.asset(
                  'assets/images/registrationLogo.png',
                  height: 70,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Registration",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150,
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
                          hintText: 'First Name',
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
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
                          hintText: 'Last Name',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
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
                      hintText: 'Mobile No.',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("We will send you one time password (OTP)",
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 10), ),
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
                  child: Center(child: Text("Submit")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OtpTextField(
                  numberOfFields: 5,
                  // fillColor: Colors.white,
                  borderColor: Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },

                  //runs when every textfield is filled
                  onSubmit: (String verificationCode){
                    showDialog(
                        context: context,
                        builder: (context){
                          return
                            Container();
                          //   AlertDialog(
                          //   title: Text("Verification Code"),
                          //   content: Text('Code entered is $verificationCode'),
                          // );
                        }
                    );
                    otp = verificationCode;
                  }, // end onSubmit
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Resend OTP",
                      style: GoogleFonts.poppins(color: Colors.black, fontSize: 10, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Get.off(()=>
                  page == 1 ?
                      HospitalCanteensPage()
                      :
                  page == 2 ?
                  SocialWorkersPage()
                      :
                          DonorPage()
                  );
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
                    child: Center(child: Text("Sign Up")),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account? ",
                      style: GoogleFonts.poppins(color: Colors.white, fontSize: 12), ),
                    GestureDetector(
                      onTap: (){
                        Get.to(()=> LoginPage(), arguments: [Get.arguments[0]]);

                      },
                      child: Text(" LogIn",
                        style: GoogleFonts.poppins(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold), ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
