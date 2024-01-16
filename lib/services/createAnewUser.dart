import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserDoc {
  late String uid;
  late String? firstname;
  late String? lastname;
  late String? email;
  late String? height;
  late String? weight;
  late String? age;
  late String? birthDay;
  late String? gender;

  UserDoc(
      {required this.uid,
      this.firstname,
      this.lastname,
      this.email,
      this.height,
      this.weight,
      this.age,
      this.birthDay,
      this.gender});

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  Future<void> createUserData() async {
    try {
      return await userCollection.doc(uid).set({
        'uid': uid,
        'name': firstname,
        'lastname': lastname,
        'email': email,
        'height': height,
        'weight': weight,
        'age': age,
        'birthday': birthDay,
        'gender': gender
      });
    } catch (e) {
      print('Failed to create user data: $e');
      throw e;
    }
  }

Future<void> updateUserData() async {
  try {
    final snapshot = await userCollection.doc(uid).get();
    if (snapshot.exists) {
      await userCollection.doc(uid).update({
        'name': firstname,
        'lastname': lastname,
        'email': email,
        'height': height,
        'weight': weight,
        'age': age,
        'birthday': birthDay,
        'gender': gender,
      });
    } else {
      await createUserData();
    }
  } catch (e) {
    print('Failed to update user data: $e');
    // Handle the error by showing an error message to the user or taking appropriate action
  }
}

Future<UserDoc> getUserData() async {
  await userCollection.doc(uid).get().then((value) {
    firstname = value.get('name');
    lastname = value.get('lastname');
    email = value.get('email');
    height = value.get('height');
    weight = value.get('weight');
    age = value.get('age');
    gender = value.get('gender');
    birthDay = value.get('birthday');
  });
  return this;
}}