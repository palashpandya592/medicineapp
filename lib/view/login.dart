import 'package:flutter/material.dart';
import 'package:medicine_app/common/app_colors.dart';
import 'package:medicine_app/common/app_strings.dart';
import 'package:medicine_app/common/text_style.dart';
import 'package:medicine_app/utils/validation_class.dart';
import 'package:medicine_app/view/register_screen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController pwdController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  Text(
                    AppString.welcome,
                    style: heavyBoldTextStyle(
                      35,
                      AppColors.black,
                    ),
                  ),
                  Text(
                    AppString.signIn,
                    style: normalBoldTextStyle(20, AppColors.grey),
                  ),
                  const SizedBox(height: 50),
                  buildTextFormField(
                      controller: numberController,
                      keyboardType: TextInputType.number,
                      hintText: AppString.mobileNumberHint,
                  ),

                  buildTextFormField(
                      controller: pwdController,
                      keyboardType: TextInputType.text,
                      hintText: AppString.passwordHint,
                  ),
                  const SizedBox(height: 80),
                  submitBox(),
                  const SizedBox(height: 80),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppString.gotoSignUpScreen,
                        style: normalBoldTextStyle(15, AppColors.black),
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen()),
                          );
                        },
                        icon: const Icon(
                          Icons.arrow_right_alt,
                          size: 35,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
