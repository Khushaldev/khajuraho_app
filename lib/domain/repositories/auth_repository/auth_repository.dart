// import 'dart:async';

// import 'package:client_app/data/firebase.dart';
// import 'package:client_app/domain/app_store/app_state.dart';
// import 'package:client_app/domain/app_store/app_store.dart';
// import 'package:client_app/domain/models/user_model/customer.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:injectable/injectable.dart';

// @injectable
// class AuthRepository {
//   AuthRepository(this.appStore, this._firebaseAuth, this._googleSignIn) {
//     _appStateStream();
//   }

//   final AppStore appStore;
//   final FirebaseAuth _firebaseAuth;
//   final GoogleSignIn _googleSignIn;

//   final String _collectionName = 'customers';

//   late Customer customer;

//   final StreamController<Customer> _customerController = StreamController.broadcast();

//   Stream<Customer> get customerStream => _customerController.stream;

//   Stream<bool> get isLoggedIn =>
//       customerStream.map((customer) => customer.id != Customer.visitor.id).distinct();

//   void _appStateStream() {
//     customer = appStore.appState.customer;

//     appStore.appStateStream.listen((appState) {
//       customer = appState.customer;
//       _customerController.add(appState.customer);
//     });
//   }

//   Future<void> updateCache(Map<String, dynamic> customer) async {
//     if (customer.isEmpty) {
//       throw Exception('Customer data cannot be empty.');
//     }

//     appStore.appState = appStore.appState.copyWith(
//       customer: Customer.fromJson(customer),
//     );
//   }

//   Future<Map<String, dynamic>?> updateCustomerAfterSignUp(
//     String firstName,
//     String lastName,
//   ) async {
//     await FirestoreService.updateOne(_collectionName, customer.id, {
//       'firstName': firstName.toLowerCase(),
//       'lastName': lastName.toLowerCase(),
//       'isFirstTime': false,
//     });

//     final updatedCustomer = await getUser(customer.id);
//     if (updatedCustomer == null) {
//       return null;
//     }
//     await updateCache(updatedCustomer);

//     return updatedCustomer;
//   }

//   Future<void> createUser(String id) async {
//     final AppState updatedAppState = appStore.appState.copyWith(
//       customer: Customer(id: id, isFirstTime: true),
//     );

//     // await FirestoreService.create(
//     //   docId: id,
//     //   collectionName: _collectionName,
//     //   data: updatedAppState.customer.toJson(),
//     // );

//     // await updateCache(updatedAppState.customer.toJson());
//   }

//   Future<Map<String, dynamic>?> getUser(String id) async {
//     final DocumentSnapshot document = await FirestoreService.read(
//       collectionName: _collectionName,
//       docId: id,
//     );

//     final data = document.data();
//     if (data != null && data is Map<String, dynamic>) {
//       return data;
//     }

//     return null;
//   }

//   Future<bool> customerExists(String id) async {
//     final DocumentSnapshot document = await FirestoreService.read(
//       collectionName: _collectionName,
//       docId: id,
//     );
//     final Object? data = document.data();

//     return data == null;
//   }

//   Future<String?> signIn() async {
//     final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
//     if (googleUser == null) {
//       return null;
//     }

//     final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
//     final AuthCredential credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );

//     final userCredential = await _firebaseAuth.signInWithCredential(credential);

//     return userCredential.user?.uid;
//   }

//   Future<void> signOut() async {
//     await _googleSignIn.signOut();
//     await _firebaseAuth.signOut();
//     appStore.appState = AppState.empty;
//   }
// }
