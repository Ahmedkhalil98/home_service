import 'package:firebase_database/firebase_database.dart';

class CRUD {
  DatabaseReference databaseReference = FirebaseDatabase.instance.ref();
  void insertData(Map<String, dynamic> data, String childName) {
    databaseReference.child(childName).push().set(data).then((value) {
      print('success');
    });
  }
}
