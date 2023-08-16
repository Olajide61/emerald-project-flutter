import 'package:emerald_projects/views/auth/login_view.dart';
import 'package:emerald_projects/views/widget/customised_button.dart';
import 'package:emerald_projects/views/widget/customised_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widget/color.dart';

class CreateView extends StatefulWidget {
  const CreateView({super.key});

  @override
  State<CreateView> createState() => _CreateViewState();
}

class _CreateViewState extends State<CreateView> {
  TextEditingController phonenumber = TextEditingController();
  TextEditingController email = TextEditingController();

  TextEditingController name = TextEditingController();

  bool hideText = true;
  bool autoValidate = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                'Create account',
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
                      hintText: 'Enter full name',
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: name,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomisedField(
                      hintText: 'Phone Number',
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: phonenumber,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomisedField(
                      hintText: 'Email',
                      textInputType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      controller: email,
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    CustomisedButton('Create', onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const LoginView();
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
                          'I have an account.',
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
                          'Login',
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
      ),
    );
  }
}
