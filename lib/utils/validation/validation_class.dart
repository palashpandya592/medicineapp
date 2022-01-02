
String? validFunemail(value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern.toString());
  if (value!.isEmpty) {
    return 'please enter email address';
  } else if (!regex.hasMatch(value)) {
    return 'enter your valid email address';
  } else {
    return null;
  }
}

String? validatePassword(value) {
  RegExp regex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  if (value.isEmpty) {
    return 'Please enter password';
  } else {
    if (!regex.hasMatch(value)) {
      return 'Enter valid password';
    } else {
      return null;
    }
  }
}

String? validateMobile(value) {
  String pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
  RegExp regExp = RegExp(pattern);
  if (value.length == 0) {
    return 'Please enter mobile number';
  } else if (!regExp.hasMatch(value)) {
    return 'Please enter valid mobile number';
  }
  return null;
}

String? validateName(String? value) {
  String pattern = r"^[a-zA-Z]+(([ -][a-zA-Z ])?[a-zA-Z]*)*$";
  RegExp regExp = RegExp(pattern);
  if (value!.isEmpty) {
    return "Please enter name";
  } else if (!regExp.hasMatch(value)) {
    return "Please enter valid name";
  }
  return null;
}
