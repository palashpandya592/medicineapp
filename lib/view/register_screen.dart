import 'package:flutter/material.dart';
import 'package:medicine_app/common/app_colors.dart';
import 'package:medicine_app/common/app_strings.dart';
import 'package:medicine_app/common/text_style.dart';
import 'package:medicine_app/utils/validation_class.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController pwdController = TextEditingController();
  TextEditingController conformPwdController = TextEditingController();
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
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_sharp,
                      size: 25,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    AppString.createAccount,
                    style: heavyBoldTextStyle(
                      28,
                      AppColors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    AppString.signUp,
                    style: normalBoldTextStyle(18, AppColors.grey),
                  ),
                  buildTextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      hintText: AppString.emailHint,
                     // validator: Validation.validFunemail(emailController.text)
                    ),
                  buildTextFormField(
                      controller: numberController,
                      keyboardType: TextInputType.number,
                      hintText: AppString.mobileNumberHint),
                  buildTextFormField(
                      controller: usernameController,
                      keyboardType: TextInputType.text,
                      hintText: AppString.userNameHint),
                  buildTextFormField(
                    controller: pwdController,
                    keyboardType: TextInputType.text,
                    hintText: AppString.passwordHint,
                  ),
                  buildTextFormField(
                    controller: conformPwdController,
                    keyboardType: TextInputType.text,
                    hintText: AppString.conformPasswordHint,
                  ),
                  const SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        const successs = SnackBar(
                          content: Text('Success'),
                          duration: Duration(seconds: 3),
                          backgroundColor: (Colors.black12),
                          dismissDirection: DismissDirection.down,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(successs);
                      }
                      else {
                        const fail = SnackBar(
                          content: Text(
                            'some thing is wrong',
                            style: TextStyle(color: Colors.white),
                          ),
                          duration: Duration(seconds: 3),
                          backgroundColor: (Colors.red),
                          dismissDirection: DismissDirection.down,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(fail);
                        return;
                      }
                    },
                    child: submitBox(),
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
