import 'package:flutter/material.dart';
import 'package:medicine_app/utils/app_colors.dart';
import 'package:medicine_app/utils/common_widget/button.dart';
import 'package:medicine_app/utils/common_widget/text_form_field.dart';
import 'package:medicine_app/utils/shared_preference/shared_preference_class.dart';
import 'package:medicine_app/utils/validation/validation_class.dart';
import 'package:medicine_app/utils/app_strings.dart';
import 'package:medicine_app/ui/views/dashboard/dashboard_screen.dart';
import 'package:medicine_app/ui/views/login/widget/login_widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController passwordController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  String? phoneNumber, password;
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
                  loginHeader(),
                  buildTextFormField(
                    key: const Key('mobile'),
                    validator: validateMobile,
                    onChanged: (val) {
                      _formKey.currentState!.validate();
                      phoneNumber = val;
                    },
                    controller: numberController,
                    keyboardType: TextInputType.number,
                    hintText: AppString.mobileNumberHint,
                  ),
                  buildTextFormField(
                    key:  const Key('password'),
                    validator: validatePassword,
                    onChanged: (val) {
                      _formKey.currentState!.validate();
                      password = val;
                    },
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    hintText: AppString.passwordHint,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 80, bottom: 20),
                    child: submitBox(onTap: () {
                      if (_formKey.currentState!.validate()) {
                        if (AppPreference.getString(AppString.phoneNumberValue) ==
                                numberController.text &&
                            AppPreference.getString(AppString.passwordValue) ==
                                passwordController.text) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DashboardScreen(),
                              ));
                        } else {
                          const fail = SnackBar(
                            content: Text(
                              AppString.invalidLogin,
                              style: TextStyle(color: AppColors.white),
                            ),
                            duration: Duration(seconds: 3),
                            backgroundColor: (AppColors.red),
                            dismissDirection: DismissDirection.down,
                          );
                          ScaffoldMessenger.of(context).showSnackBar(fail);
                          return;
                        }
                      }
                    }),
                  ),
                  loginBottom(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
