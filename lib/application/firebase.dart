import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  FirestoreService();

  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Create a single document
  static Future create({
    required String collectionName,
    required Map<String, dynamic> data,
    String? docId,
  }) async {
    if (docId == null) {
      await _firestore.collection(collectionName).add(data);
      return;
    }

    await _firestore.collection(collectionName).doc(docId).set(data);
  }

  // Create multiple documents
  static Future<void> createMany({
    required String collectionName,
    required List<Map<String, dynamic>> dataList,
    String docId = 'id',
  }) async {
    final batch = _firestore.batch();
    for (final data in dataList) {
      final docRef = _firestore
          .collection(collectionName) //
          .doc(data[docId]);

      batch.set(docRef, data);
    }
    await batch.commit();
  }

  // Read a single document by ID
  static Future<DocumentSnapshot> read({
    required String collectionName,
    required String docId,
  }) {
    return _firestore.collection(collectionName).doc(docId).get();
  }

  // Read multiple documents by IDs
  static Future<List<DocumentSnapshot>> readMany(
    String collectionName,
    List<String> ids,
  ) async {
    final docs = await Future.wait(
      ids.map(
        (id) => read(
          collectionName: collectionName,
          docId: id,
        ),
      ),
    );

    return docs;
  }

  // Read all documents in the collection
  static Future<List<Map<String, dynamic>>> readAll({
    required String collectionName,
  }) async {
    final querySnapshot = await _firestore.collection(collectionName).get();

    final List<Map<String, dynamic>> documents = querySnapshot.docs.map((doc) {
      return doc.data();
    }).toList();

    return documents;
  }

  // Update a single document by ID
  static Future<void> updateOne(
    String collectionName,
    String id,
    Map<String, dynamic> data,
  ) {
    return _firestore.collection(collectionName).doc(id).update(data);
  }

  // Update multiple documents by IDs
  static Future<void> updateMany(
      String collectionName, Map<String, Map<String, dynamic>> dataMap) async {
    final batch = _firestore.batch();
    dataMap.forEach((id, data) {
      final docRef = _firestore.collection(collectionName).doc(id);
      batch.update(docRef, data);
    });
    await batch.commit();
  }

  // Update all documents in the collection
  static Future<void> updateAll(
    String collectionName,
    Map<String, dynamic> data,
  ) async {
    final docs = await _firestore.collection(collectionName).get();
    final batch = _firestore.batch();
    for (var doc in docs.docs) {
      batch.update(doc.reference, data);
    }
    await batch.commit();
  }

  // Soft delete a document (mark it as deleted)
  static Future<void> softDelete(
    String collectionName,
    String id,
  ) {
    return _firestore.collection(collectionName).doc(id).update(
      {
        'isDeleted': true,
      },
    );
  }

  // Hard delete a single document by ID
  static Future<void> hardDelete(
    String collectionName,
    String id,
  ) {
    return _firestore.collection(collectionName).doc(id).delete();
  }

  // Delete multiple documents by IDs
  static Future<void> deleteMany(
    String collectionName,
    List<String> ids,
  ) async {
    final batch = _firestore.batch();
    for (var id in ids) {
      final docRef = _firestore.collection(collectionName).doc(id);
      batch.delete(docRef);
    }
    await batch.commit();
  }

  // Delete a single document by ID
  Future<void> deleteOne(String collectionName, String id) {
    return _firestore.collection(collectionName).doc(id).delete();
  }

  // Delete all documents in the collection
  Future<void> deleteAll(
    String collectionName,
  ) async {
    final docs = await _firestore.collection(collectionName).get();
    final batch = _firestore.batch();
    for (var doc in docs.docs) {
      batch.delete(doc.reference);
    }
    await batch.commit();
  }

  // Additional: Query documents with conditions
  Future<QuerySnapshot> query(
    String collectionName,
    Map<String, dynamic> conditions,
  ) {
    CollectionReference collection = _firestore.collection(collectionName);
    Query query = collection;
    conditions.forEach((field, value) {
      query = query.where(field, isEqualTo: value);
    });
    return query.get();
  }
}
