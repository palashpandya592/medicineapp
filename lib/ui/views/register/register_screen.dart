import 'package:flutter/material.dart';
import 'package:medicine_app/bussiness_logic/utills/common_widget/button.dart';
import 'package:medicine_app/bussiness_logic/utills/common_widget/text_form_field.dart';
import 'package:medicine_app/bussiness_logic/utills/shared_preference/shared_preference_class.dart';
import 'package:medicine_app/bussiness_logic/utills/validation/validation_class.dart';
import 'package:medicine_app/bussiness_logic/utills/app_colors.dart';
import 'package:medicine_app/bussiness_logic/utills/app_strings.dart';
import 'package:medicine_app/ui/views/register/widget/register_header.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController numberController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController conformPasswordController = TextEditingController();

  String? email, phoneNumber, name, password,conformPwd;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  registerHeader(context),
                  buildTextFormField(
                    validator: validFunemail,
                    onChanged: (val) {
                      _formKey.currentState!.validate();
                      email = val;
                    },
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    hintText: AppString.emailHint,
                  ),
                  buildTextFormField(
                      onChanged: (val) {
                        _formKey.currentState!.validate();
                        phoneNumber = val;
                      },
                      validator: validateMobile,
                      controller: numberController,
                      keyboardType: TextInputType.number,
                      hintText: AppString.mobileNumberHint),
                  buildTextFormField(
                      validator: validateName,
                      onChanged: (val) {
                        _formKey.currentState!.validate();
                        name = val;
                      },
                      controller: usernameController,
                      keyboardType: TextInputType.text,
                      hintText: AppString.userNameHint),
                  buildTextFormField(
                    validator: validatePassword,
                    onChanged: (val) {
                      _formKey.currentState!.validate();
                      password = val;
                    },
                    controller: passwordController,
                    keyboardType: TextInputType.text,
                    hintText: AppString.passwordHint,
                  ),
                  buildTextFormField(
                    validator: (value){
                      if (value.isEmpty) {
                        return "Re-entered password";
                      } else if (value != passwordController.text) {
                        return "password is not matched";
                      } else {
                        return null;
                      }
                    },
                    onChanged: (val){
                      _formKey.currentState!.validate();
                      conformPwd=val;
                    },
                    controller: conformPasswordController,
                    keyboardType: TextInputType.text,
                    hintText: AppString.conformPasswordHint,
                  ),
                  const SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        const success = SnackBar(
                          content: Text(AppString.success),
                          duration: Duration(seconds: 3),
                          backgroundColor: (Colors.black12),
                          dismissDirection: DismissDirection.down,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(success);
                      } else {
                        const fail = SnackBar(
                          content: Text(
                            AppString.someThingWrong,
                            style: TextStyle(color: AppColors.white),
                          ),
                          duration: Duration(seconds: 3),
                          backgroundColor: (AppColors.red),
                          dismissDirection: DismissDirection.down,
                        );
                        ScaffoldMessenger.of(context).showSnackBar(fail);
                        return;
                      }
                    },
                    child: submitBox(onTap: (){
                      if(_formKey.currentState!.validate()){
                        AppPreference.set(AppString.phoneNumberValue, numberController.text);
                        AppPreference.set(AppString.passwordValue, passwordController.text);
                        AppPreference.set(AppString.userNameValue,usernameController.text);
                        AppPreference.set(AppString.emailValue, emailController.text);
                        Navigator.pop(context);
                      }
                    }),
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
