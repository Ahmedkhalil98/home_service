import 'package:get/get.dart';
import 'package:home_service/Core/Constants/app_routes.dart';
import 'package:home_service/Data/Models/device_cat_model.dart';

import '../../Core/Constants/image_link.dart';

List<DeviceCatModel> deviceName = [
  DeviceCatModel(
      title: 'Conditioner',
      image: AppImageAssets.conditioner,
      onTap: () => Get.toNamed(AppRoutes.conditionerPage)),
  DeviceCatModel(
      title: 'Lamp', image: AppImageAssets.lamp, onTap: () => Get.toNamed('')),
  DeviceCatModel(
      title: 'Washing',
      image: AppImageAssets.washing,
      onTap: () => Get.toNamed(AppRoutes.washingPage)),
  DeviceCatModel(
      title: 'Doors', image: AppImageAssets.door, 
      onTap: () => Get.toNamed(AppRoutes.doorPage)),
  DeviceCatModel(
      title: 'Electricity',
      image: AppImageAssets.electricity,
      onTap: () => Get.toNamed(AppRoutes.electricityPage)),
  DeviceCatModel(
      title: 'Cameras',
      image: AppImageAssets.lamp,
      onTap: () => Get.toNamed('')),
  DeviceCatModel(
      title: 'Water',
      image: AppImageAssets.water,
      onTap: () => Get.toNamed(AppRoutes.waterPage)),
  DeviceCatModel(
      title: 'TV', image: AppImageAssets.tv, onTap: () => Get.toNamed(AppRoutes.tvPage)),
  DeviceCatModel(
      title: 'Security',
      image: AppImageAssets.lamp,
      //!
      onTap: () => Get.toNamed('')),
  DeviceCatModel(
      title: 'Baby Room',
      image: AppImageAssets.lamp,
      //!
      onTap: () => Get.toNamed('')),
];
