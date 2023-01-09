import 'package:cloud_firestore/cloud_firestore.dart';

class PrivateDBService {
  final String? uid;
  PrivateDBService({this.uid});

  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");
  final CollectionReference chatroomsCollection =
      FirebaseFirestore.instance.collection("chatrooms");

  addMessage(String chatRoomId, Map<String, dynamic> chatMessageData) async {
    chatroomsCollection
        .doc(chatRoomId)
        .collection("chats")
        .add(chatMessageData);
    chatroomsCollection.doc(chatRoomId).update({
      "recentMessage": chatMessageData['message'],
      "recentMessageSender": chatMessageData['sender'],
      "recentMessageTime": chatMessageData['time'].toString(),
    });
  }

  Future<String?> getRecentMessage(String chatRoomId) async {
    var data = await chatroomsCollection.doc(chatRoomId).get();
    if (data["recentMessageSender"] != null && data["recentMessage"] != null) {
      return '${data["recentMessageSender"]}: ${data["recentMessage"]}';
    }
    return null;
  }

  Future<Stream<QuerySnapshot>> getChatRoomMessages(chatRoomId) async {
    return chatroomsCollection
        .doc(chatRoomId)
        .collection("chats")
        .orderBy("time")
        .snapshots();
  }

  getChatRooms() async {
    return userCollection.doc(uid).snapshots();
  }

  searchByName(String chatroom) {
    return userCollection.where("fullName", isEqualTo: chatroom).get();
  }

  Future createChatroom({
    required String userName1,
    required String userName2,
    required String uid2,
    required String user1email,
    required String user2email,
  }) async {
    DocumentReference chatroomDocumentReference =
        await chatroomsCollection.add({
      "userName": userName2,
      "userIcon": "",
      "chatroomId": "",
      "recentMessage": "",
    });
    // update the members
    await chatroomDocumentReference.update({
      "chatroomId": chatroomDocumentReference.id,
    });
    DocumentReference userDocumentReference = userCollection.doc(uid);
    await userDocumentReference.update({
      "chatrooms": FieldValue.arrayUnion([
        "${chatroomDocumentReference.id}_$userName2",
      ]),
      "contactList": FieldValue.arrayUnion([user2email]),
    });

    DocumentReference user2DocumentReference = userCollection.doc(uid2);
    await user2DocumentReference.update({
      "chatrooms": FieldValue.arrayUnion([
        "${chatroomDocumentReference.id}_$userName1",
      ]),
      "contactList": FieldValue.arrayUnion([user1email]),
    });
    return chatroomDocumentReference.id;
  }

  Future<bool> isUserJoined(String user2EmailId) async {
    DocumentReference userDocumentReference = userCollection.doc(uid);
    DocumentSnapshot documentSnapshot = await userDocumentReference.get();

    List<dynamic> chatrooms = await documentSnapshot['contactList'];
    return chatrooms.contains(user2EmailId) ? true : false;
  }
}
