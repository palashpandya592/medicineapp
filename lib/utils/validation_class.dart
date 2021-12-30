
import 'package:medicine_app/common/app_strings.dart';

class Validation {

  static validFunemail(String? value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regex = RegExp(pattern.toString());
    if (value!.isEmpty) {
      return AppString.emailHint;
    } else if (!regex.hasMatch(value)) {
      return AppString.validEmail;
    } else {
      return null;
    }
  }

  static validFunPassword (String value){
    Pattern pattern =
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$';

    RegExp regex = RegExp(pattern.toString());
    if (value.isEmpty) {
      return AppString.passwordHint;
    } else if (!regex.hasMatch(value)) {
      return AppString.validPassword;
    } else {
      return null;
    }
  }

}