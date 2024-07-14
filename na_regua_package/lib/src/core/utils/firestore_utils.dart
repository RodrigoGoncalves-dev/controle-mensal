import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreUtils<T> {
  final String collectionName;
  final T Function(Map<String, dynamic> json) fromJson;
  final Map<String, dynamic> Function(T) toJson;

  FirestoreUtils({
    required this.collectionName,
    required this.fromJson,
    required this.toJson,
  });

  CollectionReference get _collection => FirebaseFirestore.instance.collection(collectionName);

  Future<List<T>> get() async {
    try {
      final QuerySnapshot querySnapshot = await _collection.get();
      return querySnapshot.docs.map((doc) => fromJson(doc.data() as Map<String, dynamic>)).toList();
    } on FirebaseException catch (e) {
      throw Exception('FirebaseException while fetching data: $e');
    } catch (e) {
      throw Exception('Unknown error while fetching data: $e');
    }
  }

  Future<T?> getById(String id) async {
    try {
      final DocumentSnapshot docSnapshot = await _collection.doc(id).get();
      print(id);
      print(docSnapshot.data());
      if (docSnapshot.exists) {
        return fromJson(docSnapshot.data() as Map<String, dynamic>);
      } else {
        return null;
      }
    } on FirebaseException catch (e) {
      throw Exception('FirebaseException while fetching data by id: $e');
    } catch (e) {
      throw Exception('Unknown error while fetching data by id: $e');
    }
  }

  Future<void> add(T item) async {
    try {
      await _collection.add(toJson(item));
    } on FirebaseException catch (e) {
      throw Exception('FirebaseException while adding data: $e');
    } catch (e) {
      throw Exception('Unknown error while adding data: $e');
    }
  }

  Future<void> update(String id, T item) async {
    try {
      await _collection.doc(id).update(toJson(item));
    } on FirebaseException catch (e) {
      throw Exception('FirebaseException while updating data: $e');
    } catch (e) {
      throw Exception('Unknown error while updating data: $e');
    }
  }

  Future<void> delete(String id) async {
    try {
      await _collection.doc(id).delete();
    } on FirebaseException catch (e) {
      throw Exception('FirebaseException while deleting data: $e');
    } catch (e) {
      throw Exception('Unknown error while deleting data: $e');
    }
  }
}
