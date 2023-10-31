import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';

class AddDataFirestore {
  var logger = Logger();
  CollectionReference response =
      FirebaseFirestore.instance.collection('messages');
  Future<void> addResponse(
    final String firstName,
    final String? lastName,
    final String email,
    final String? phoneNumber,
    final String message,
  ) async {
    return response
        .add({
          'first_name': firstName,
          'last_name': lastName,
          'email': email,
          'phone_number': phoneNumber,
          'message': message
        })
        .then((value) => logger.d('Data Added'))
        .catchError((error) => logger.e(error));
  }
}
