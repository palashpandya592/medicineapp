import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:medicine_app/bussiness_logic/models/medicine_model.dart';

class DashboardViewModel extends ChangeNotifier {
  Medicine? medicine;
  bool isLoading=false;

  getMedicine() async {
    isLoading=true;
    final response =
        await rootBundle.loadString("assets/jsonData/modicineJson.json");
    isLoading=false;
    final data = await json.decode(response);
    medicine = Medicine.fromJson(data);
    if (kDebugMode) {
      print("data-------$medicine");
    }
    notifyListeners();
  }



}
