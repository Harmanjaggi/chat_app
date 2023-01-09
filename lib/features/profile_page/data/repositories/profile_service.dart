import 'package:cloud_firestore/cloud_firestore.dart';

class ProfielService {
  final String? uid;
  ProfielService({this.uid});

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");

  getUid(String email) async {
    QuerySnapshot snapshot =
        await userCollection.where("email", isEqualTo: email).get();
    return snapshot.docs[0]['uid'];
  }

  getUser(String userName) async {
    QuerySnapshot snapshot =
        await userCollection.where("fullName", isEqualTo: userName).get();
    return snapshot.docs[0];
  }

  Future<String?> openProfilePic() async {
    DocumentReference userDocumentReference = userCollection.doc(uid);
    DocumentSnapshot documentSnapshot = await userDocumentReference.get();
    return documentSnapshot['profilePic'];
  }

  Future<String?> getType() async {
    DocumentReference userDocumentReference = userCollection.doc(uid);
    DocumentSnapshot documentSnapshot = await userDocumentReference.get();
    return documentSnapshot['type'];
  }

  Future<String?> getEmail() async {
    DocumentReference userDocumentReference = userCollection.doc(uid);
    DocumentSnapshot documentSnapshot = await userDocumentReference.get();
    return documentSnapshot['email'];
  }

  Future<List<dynamic>?> getContactList() async {
    DocumentReference userDocumentReference = userCollection.doc(uid);
    DocumentSnapshot documentSnapshot = await userDocumentReference.get();
    return documentSnapshot['contactList'];
  }

  Future updateProfilePic(String profilePic) async {
    DocumentReference userDocumentReference = userCollection.doc(uid);
    await userDocumentReference.update({
      "profilePic": profilePic,
    });
  }
}
