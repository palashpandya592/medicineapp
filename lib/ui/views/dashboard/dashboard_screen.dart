import 'package:flutter/material.dart';
import 'package:medicine_app/bussiness_logic/utills/app_colors.dart';
import 'package:medicine_app/bussiness_logic/utills/app_strings.dart';
import 'package:medicine_app/bussiness_logic/utills/app_text_style.dart';
import 'package:medicine_app/bussiness_logic/view_model/register_view_model.dart';
import 'package:medicine_app/main.dart';
import 'package:medicine_app/ui/views/dashboard/widget/dashboard_bottom.dart';
import 'package:medicine_app/ui/views/dashboard/widget/dashboard_header.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  DashboardViewModel apiProvider = getIt<DashboardViewModel>();

  @override
  void initState() {
    apiProvider.getMedicine();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.grey100,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: AppColors.purple,
          centerTitle: true,
          elevation: 2,
          title: Text(
            AppString.titleName,
            style: heavyBoldTextStyle(19, AppColors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dashboardHeader(greetingText: AppString.greeting()),
              Padding(
                padding: const  EdgeInsets.symmetric(horizontal: 25),
                child: Text("ClassName :",style: normalBoldTextStyle(16, AppColors.black).copyWith(height: 2),),
              ),
              const SizedBox(height: 10,),
              ChangeNotifierProvider<DashboardViewModel>(
                  create: (context) => apiProvider,
                  child: Consumer<DashboardViewModel>(
                    builder: (context, data, child) => data.isLoading
                        ? const CircularProgressIndicator()
                        : ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: data.medicine!.problems!.length,
                          itemBuilder: (context, index) => ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: data.medicine!.problems![index].diabetes!.length,
                            itemBuilder: (context, index1) => ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: data.medicine!.problems![index].diabetes![index1].medications!.length,
                              itemBuilder: (context, index2) => ListView.builder(
                                physics: NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: data.medicine!.problems![index].diabetes![index1].medications![index2].medicationsClasses!.length,
                                itemBuilder: (context, index3) =>  ListView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: data.medicine!.problems![index].diabetes![index1].medications![index2].medicationsClasses![index3].className!.length,
                                  itemBuilder: (context, index4) {
                                 var dMedicine= data.medicine!.problems![index].diabetes![index1].medications![index2].medicationsClasses![index3].className!;
                                 return Column(
                                       children: [
                                       ListView.builder(
                                           shrinkWrap: true,
                                           physics: NeverScrollableScrollPhysics(),
                                           itemCount: data.medicine!.problems![index].diabetes![index1].medications![index2].medicationsClasses![index3].className![index4].associatedDrug!.length,
                                           itemBuilder: (context, index5) => dashboardBottom(drugText:AppString.associated,nameText: dMedicine![index5].associatedDrug![index5].name.toString(),
                                             doseText: dMedicine[index5].associatedDrug![index5].dose.toString().isEmpty ? "---" :dMedicine[index5].associatedDrug![index5].dose.toString(),
                                             strengthText: dMedicine[index5].associatedDrug![index5].strength.toString()),),
                                         const SizedBox(height: 20,),
                                         ListView.builder(
                                           shrinkWrap: true,
                                           physics: NeverScrollableScrollPhysics(),
                                           itemCount: data.medicine!.problems![index].diabetes![index1].medications![index2].medicationsClasses![index3].className![index4].associatedDrug2!.length,
                                           itemBuilder: (context, index6) => dashboardBottom(drugText:AppString.associated2,nameText: dMedicine![index6].associatedDrug2![index6].name.toString(),
                                               doseText: dMedicine[index6].associatedDrug2![index6].dose.toString().isEmpty ? "---" :dMedicine[index6].associatedDrug2![index6].dose.toString(),
                                               strengthText: dMedicine[index6].associatedDrug2![index6].strength.toString()),),
                                       ],
                                     );
                                    }
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ),
              const SizedBox(height: 50,),
              Padding(
                padding: const  EdgeInsets.symmetric(horizontal: 25),
                child: Text("ClassName 2:",style: normalBoldTextStyle(16, AppColors.black).copyWith(height: 2),),
              ),
              const SizedBox(height: 10,),
              ChangeNotifierProvider<DashboardViewModel>(
                create: (context) => apiProvider,
                child: Consumer<DashboardViewModel>(
                  builder: (context, data, child) => data.isLoading
                      ? const CircularProgressIndicator()
                      : ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data.medicine!.problems!.length,
                    itemBuilder: (context, index) => ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: data.medicine!.problems![index].diabetes!.length,
                      itemBuilder: (context, index1) => ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: data.medicine!.problems![index].diabetes![index1].medications!.length,
                        itemBuilder: (context, index2) => ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: data.medicine!.problems![index].diabetes![index1].medications![index2].medicationsClasses!.length,
                          itemBuilder: (context, index3) =>  ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: data.medicine!.problems![index].diabetes![index1].medications![index2].medicationsClasses![index3].className!.length,
                              itemBuilder: (context, index4) {
                                var dMedicine= data.medicine!.problems![index].diabetes![index1].medications![index2].medicationsClasses![index3].className!;
                                return Column(
                                  children: [
                                    ListView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: data.medicine!.problems![index].diabetes![index1].medications![index2].medicationsClasses![index3].className![index4].associatedDrug!.length,
                                      itemBuilder: (context, index5) => dashboardBottom(drugText:AppString.associated,nameText: dMedicine![index5].associatedDrug![index5].name.toString(),
                                          doseText: dMedicine[index5].associatedDrug![index5].dose.toString().isEmpty ? "---" :dMedicine[index5].associatedDrug![index5].dose.toString(),
                                          strengthText: dMedicine[index5].associatedDrug![index5].strength.toString()),),
                                    const SizedBox(height: 20,),
                                    ListView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemCount: data.medicine!.problems![index].diabetes![index1].medications![index2].medicationsClasses![index3].className![index4].associatedDrug2!.length,
                                      itemBuilder: (context, index6) => dashboardBottom(drugText:AppString.associated2,nameText: dMedicine![index6].associatedDrug2![index6].name.toString(),
                                          doseText: dMedicine[index6].associatedDrug2![index6].dose.toString().isEmpty ? "---" :dMedicine[index6].associatedDrug2![index6].dose.toString(),
                                          strengthText: dMedicine[index6].associatedDrug2![index6].strength.toString()),),
                                  ],
                                );
                              }
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}