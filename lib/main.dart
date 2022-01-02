import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:medicine_app/ui/views/login/login.dart';

import 'bussiness_logic/view_model/dashboard_view_model.dart';
import 'utils/shared_preference/shared_preference_class.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreference.init();
  setupServiceLocator();
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}
final getIt = GetIt.instance;
setupServiceLocator(){
  getIt.registerSingleton<DashboardViewModel>(DashboardViewModel());
}