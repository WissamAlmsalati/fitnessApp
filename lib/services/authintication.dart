import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
class AuthinticantioService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<UserCredential> signInWithEmailAndPassword(String email, String password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return result;
    } catch (e) {
      print("Enter an");
      return Future.error("Enter an inv email and password") ;
    }
  }
  Future signUpWithEmailAndPassword(String email, String password) async{
    try{
      UserCredential result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      User? user = result.user;
      return user?.uid;
    }catch(e){
      print(e.toString());
      return null;
    }
  }
  Future signOut() async{
    try{
      return await _auth.signOut();
    }catch(e){
      print(e.toString());
      return null;
    }
  }

}