class DeviceCatModel {
  String? title;
  String? image;
  void Function()? onTap;

  DeviceCatModel({
    required this.title,
    required this.image,
    required this.onTap,
  });
}
