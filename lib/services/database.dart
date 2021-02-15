import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:project/models/profile.dart';
import 'package:project/models/user.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});
//collection reference
  final CollectionReference profilecollection =
      FirebaseFirestore.instance.collection('profile');

  Future updateUserData(String name, String gender, int age) async {
    return await profilecollection.doc(uid).set({
      'name': name,
      'gender': gender,
      'age': age,
    });
  }

  //profile list from snapshot
  List<Profile> _profileListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.docs.map((doc) {
      return Profile(
          name: doc.data()['name'] ?? '',
          gender: doc.data()['gender'] ?? 'Male',
          age: doc.data()['age'] ?? 0);
    }).toList();
  }

  UserData _userDataFromSnapshot(DocumentSnapshot snapshot) {
    return UserData(
        uid: uid,
        name: snapshot.data()['name'],
        gender: snapshot.data()['gender'],
        age: snapshot.data()['age']);
  }

  //get profile stream
  Stream<List<Profile>> get profile {
    return profilecollection.snapshots().map(_profileListFromSnapshot);
  }

  Stream<UserData> get userData {
    return profilecollection.doc(uid).snapshots().map(_userDataFromSnapshot);
  }
}
