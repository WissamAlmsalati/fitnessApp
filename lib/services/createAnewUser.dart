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

  UserDoc({
    required this.uid,
    this.firstname,
    this.lastname,
    this.email,
    this.height,
    this.weight,
    this.age,
    this.birthDay,
    this.gender,
  });

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection('users');

  Future<void> createUserData() async {
    try {
      await userCollection.doc(uid).set({
        'uid': uid,
       if(firstname != null) 'firstname': firstname, // Add null check (if statement
        if (lastname != null) 'lastname': lastname,
        if (email != null) 'email': email,
        if (height != null) 'height': height,
        if (weight != null) 'weight': weight,
        if (age != null) 'age': age,
        if (birthDay != null) 'birthday': birthDay,
        if (gender != null) 'gender': gender,
      });
    } catch (e) {
      print('Failed to create user data: $e');
      throw e;
    }
  }

  Future<UserDoc> getUserData() async {
    final snapshot = await userCollection.doc(uid).get();
    if (snapshot.exists) {
      firstname = snapshot.get('firstname');
      lastname = snapshot.get('lastname');
      email = snapshot.get('email');
      height = snapshot.get('height');
      weight = snapshot.get('weight');
      age = snapshot.get('age');
      gender = snapshot.get('gender');
      birthDay = snapshot.get('birthday');
    }
    return this;
  }

 Future<void> updateUserData(String uid, {
  String? firstname,
  String? lastname,
  String? height,
  String? weight,
  String? age,
  String? birthDay,
  String? gender,
}) async {
  try {
    await userCollection.doc(uid).update({
      'firstname': firstname,
      'lastname': lastname,
      'height': height,
      'weight': weight,
      'age': age,
      'birthday': birthDay,
      'gender': gender,
    });
  } catch (e) {
    print('Failed to update user data: $e');
    throw e;
  }
}

  Future<void> deleteUserData() async {
    try {
      await userCollection.doc(uid).delete();
    } catch (e) {
      print('Failed to delete user data: $e');
      throw e;
    }
  }
}