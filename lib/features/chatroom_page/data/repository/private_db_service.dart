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

  // todo: doubt
  updateLastMessageSend(
      String chatRoomId, Map<String, dynamic> lastMessageInfoMap) {
    return chatroomsCollection.doc(chatRoomId).update(lastMessageInfoMap);
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

  Future createChatroom(String userName2, String chatRoomId) async {
    final snapShot = await chatroomsCollection.doc(chatRoomId).get();
    if (snapShot.exists) return null;
    // chatroom does not exists
    chatroomsCollection.doc(chatRoomId).set({
      "userName": userName2,
      "userIcon": "",
      "chatroomId": chatRoomId,
      "recentMessage": "",
    });
    // update the members
    String id = "${chatRoomId}_$userName2";
    DocumentReference userDocumentReference = userCollection.doc(uid);
    await userDocumentReference.update({
      "chatrooms": FieldValue.arrayUnion([id])
    });
    return true;
  }

  Future<bool> isUserJoined(String userName2, String chatRoomId) async {
    String id = "${chatRoomId}_$userName2";
    DocumentReference userDocumentReference = userCollection.doc(uid);
    DocumentSnapshot documentSnapshot = await userDocumentReference.get();

    List<dynamic> chatrooms = await documentSnapshot['chatrooms'];
    return chatrooms.contains(id) ? true : false;
  }
}
