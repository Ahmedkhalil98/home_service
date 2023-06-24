import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:home_service/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;
  
  Future<MyServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
      await Firebase.initializeApp(
        name: 'Home Services',
    options: DefaultFirebaseOptions.currentPlatform,
);
    return this;
  }
}

initialServices() async {
  await Get.putAsync(() => MyServices().init());
}
