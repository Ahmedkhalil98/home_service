import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:home_service/Data/Models/conditioner_model.dart';

class ConditionerReadData extends GetxController {
  DatabaseReference databaseReference = FirebaseDatabase.instance.ref();
  List<ConditionerModel> conditionerModelList = [];
  ConditionerModel? conditionerModel;
  readData() {
    databaseReference
        .child('HOMESERVICES/CONDITIONER')
        .onChildAdded
        .listen((data) {
      // print(data.snapshot.value);
      ConditionerData conditionerData =
          ConditionerData.fromJson(data.snapshot.value as Map);
      conditionerModel = ConditionerModel(
          key: data.snapshot.key, conditionerData: conditionerData);
      conditionerModelList.add(conditionerModel!);
      update();
    });
  }

  @override
  void onInit() {
    readData();
    super.onInit();
  }
}
