import 'package:emerald_projects/views/auth/otp_view.dart';
import 'package:emerald_projects/views/widget/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/customised_button.dart';
import '../widget/customised_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController password = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController name = TextEditingController();
  bool hideText = true;
  bool autoValidate = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
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
              'Login',
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
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  CustomisedField(
                    hintText: 'Email',
                    textInputType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    controller: email,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomisedField(
                    hintText: 'Confirm password',
                    textInputType: TextInputType.text,
                    textInputAction: TextInputAction.done,
                    controller: password,
                    obscureText: hideText,
                    suffixIcon: IconButton(
                      color: AppColors.darkGrey,
                      onPressed: () {
                        hideText = !hideText;
                        setState(() {});
                      },
                      icon: Icon(
                          hideText ? Icons.visibility_off : Icons.visibility),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffF18553),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  CustomisedButton('Login', onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return const OtpView();
                      }),
                    );
                  }, buttonColor: AppColors.orange, textColor: Colors.white),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'I don’t have an account.',
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff606060),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Register',
                        style: GoogleFonts.openSans(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffF18553),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
