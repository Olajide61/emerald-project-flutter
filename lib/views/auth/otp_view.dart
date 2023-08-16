// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import '../widget/color.dart';
import '../widget/customised_button.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  final pinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/white0.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 64, left: 83, right: 82.09),
              child: Image.asset(
                'assets/images/logo.png',
                height: 34,
                width: 224.91,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              'Email Verification',
              textAlign: TextAlign.center,
              style: GoogleFonts.openSans(
                textStyle: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff101010),
                ),
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              'Enter the 4-digit code sent to your email to \nverify your account',
              style: GoogleFonts.openSans(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff747474),
                ),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Pinput(
                    obscureText: true,
                    defaultPinTheme: PinTheme(
                        decoration: BoxDecoration(
                          color: const Color(0xffF6F6F6),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        textStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                        width: 68,
                        height: 68),
                    onSubmitted: (value) {
                      setState(
                        () {},
                      );
                    },
                    length: 4,
                    keyboardType: TextInputType.number,
                    controller: pinController,
                    textInputAction: TextInputAction.next,
                    showCursor: true,
                    validator: (s) {},
                    onCompleted: null,
                  ),
                  const SizedBox(
                    height: 52,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Didn’t receive code?',
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff606060),
                          ),
                        ),
                      ),
                      Text(
                        ' Resend code',
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffF18553),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomisedButton('Verify', onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const OtpView();
                      }),
                    );
                  }, buttonColor: AppColors.orange, textColor: Colors.white),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
