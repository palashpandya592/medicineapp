class AppString {

  //appPreference string name
  static const phoneNumberValue='phoneNumberValue';
  static const passwordValue='passwordValue';
  static const userNameValue="userNameValue";
  static const emailValue='emailValue';

  //textfield string name
  static const String emailHint = 'Email';
  static const String userNameHint = 'Username';
  static const String mobileNumberHint = 'Phone number';
  static const String passwordHint = 'Password';
  static const String conformPasswordHint = 'Confirm password';


  //error message
  static const String someThingWrong='some thing is wrong';
  static const invalidLogin='Invalid phoneNumber and password';

  //other string name
  static const String welcome = 'Welcome,';
  static const String signIn = 'Sign in to continue !';
  static const String success = 'Success';
  static const String gotoSignUpScreen = 'click for sign up';
  static const String createAccount = 'Create Account,';
  static const String signUp = 'Sign up to get started!';
  static const titleName="Medicine Dashboard";
  static const associated="AssociatedDrug ";
  static const associated2= "AssociatedDrug#2  ";

  static String greeting() {
    var hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    }
    if (hour < 17) {
      return 'Good Afternoon';
    }
    return 'Good Evening';
  }

}
