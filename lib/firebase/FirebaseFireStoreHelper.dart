import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/user.dart';
import 'FBAHelper.dart';


class FirebaseFireStoreHelper {
  FirebaseFireStoreHelper._();
  static FirebaseFireStoreHelper fireStoreHelper = FirebaseFireStoreHelper._();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  final String userCollection = "Users";
  final String realEstateCollection = "RealEstate";

  Future SaveUserData(Users users, String id) async {
    await firestore.collection(userCollection).doc(id).set({
      "id": id,
      "email": users.email,
      "name": users.name,
      "phone":users.phone,
      "accountType":users.accountType
    });
  }

  Future addFavToUser(String nameSpe) async {
    await firestore
        .collection("Fav")
        .doc(FirebaseAuth.instance.currentUser!.uid).collection('sup').add({"nameSpe":nameSpe,});
  }

  Future<QuerySnapshot<Map<String, dynamic>>> getAllUsers() async {
    final QuerySnapshot<Map<String, dynamic>> allUser =
        await firestore.collection(userCollection).get();
    return allUser;
  }

  Future getUserData () async{

  }

  Future addRealEstate ()async {

  }
}
