import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getPeople() async {
/*  List people = [];
  CollectionReference collectionReferencePeople = db.collection('people');

  QuerySnapshot queryPeople = await collectionReferencePeople.get();
  queryPeople.docs.forEach((documento) {
    people.add(documento.data());
  });*/
  List people = [];
  QuerySnapshot querySnapshot = await db.collection('people').get();
  for(var doc in querySnapshot.docs){
    final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
    final person = {
      "name": data['name'],
      "uid": doc.id,
    };
    people.add(person);
  }
  await Future.delayed(const Duration(seconds: 5));
  return people;
}

//Guardar name en db
Future<void> addPeople(String name) async {
  await db.collection("people").add({"name": name});
}

// Actualizar un name en base de datos
Future<void> updatePeople(String uid, String newName) async {
  await db.collection("people").doc(uid).set({"name": newName});
}






















