import 'package:cloud_firestore/cloud_firestore.dart';

class ProfielService {
  final String? uid;
  ProfielService({this.uid});

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");

  Future updateProfilePic(String profilePic) async {
    DocumentReference userDocumentReference = userCollection.doc(uid);
    await userDocumentReference.update({
      "profilePic": profilePic,
    });
  }
}
