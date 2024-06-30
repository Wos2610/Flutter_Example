
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio_example/data/network/model/sign_up/sign_up_request.dart';
import 'package:dio_example/data/network/model/sign_up/success_sign_up_response.dart';
import 'package:dio_example/domain/sign_up_repository.dart';

import '../../firebase/sign_up_service.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  final FirebaseSignUpService signUpService;

  SignUpRepositoryImpl({required this.signUpService});

  // @override
  // Future<dynamic> signUp(SignUpRequest signUpRequest) async {
  //   final response = await signUpService.postSignUp(signUpRequest);
  //   if(response is SuccessSignUpResponse){
  //     print("Success SignUp Response");
  //     return response;
  //   }
  //   else if (response is FailureSignUpResponse){
  //     print("Failure SignUp Response");
  //     return response;
  //   }
  //   else{
  //     print("Unexpected response type: $response");
  //     throw Exception("Unknown response");
  //   }
  // }

  // @override
  // Future<dynamic> signUp(SignUpRequest signUpRequest) async {
  //   late SuccessSignUpResponse response;
  //   try {
  //     final DocumentReference<Map<String, dynamic>> documentReference =
  //     await FirebaseFirestore.instance.collection('userList').add({
  //       'username': signUpRequest.username,
  //       'password': signUpRequest.password,
  //       'fullName': signUpRequest.fullName,
  //       'dateOfBirth': signUpRequest.dateOfBirth.toIso8601String(),
  //       'phoneNumber': signUpRequest.phoneNumber,
  //       'email': signUpRequest.email,
  //       'avatar': signUpRequest.avatar,
  //     });
  //
  //     response = SuccessSignUpResponse(
  //       userId: documentReference.id,
  //       username: signUpRequest.username,
  //       fullName: signUpRequest.fullName,
  //       dateOfBirth: signUpRequest.dateOfBirth,
  //       phoneNumber: signUpRequest.phoneNumber,
  //       email: signUpRequest.email,
  //       avatar: signUpRequest.avatar,
  //     );
  //   } catch (e) {
  //     print('Error: $e');
  //   }
  //   return response;
  // }

  @override
  Future<dynamic> signUp(SignUpRequest signUpRequest) async {
    try {
      final user = await signUpService.signUp(
          signUpRequest.email, signUpRequest.password);
      if (user != null) {
        final DocumentReference<Map<String, dynamic>> documentReference =
        await FirebaseFirestore.instance.collection('userList').add({
          'username': signUpRequest.username,
          'password': signUpRequest.password,
          'fullName': signUpRequest.fullName,
          'dateOfBirth': signUpRequest.dateOfBirth.toIso8601String(),
          'phoneNumber': signUpRequest.phoneNumber,
          'email': signUpRequest.email,
          'avatar': signUpRequest.avatar,
        });

        final response = SuccessSignUpResponse(
          userId: documentReference.id,
          username: signUpRequest.username,
          fullName: signUpRequest.fullName,
          dateOfBirth: signUpRequest.dateOfBirth,
          phoneNumber: signUpRequest.phoneNumber,
          email: signUpRequest.email,
          avatar: signUpRequest.avatar,
        );
        return response;
      }
      else {
        print("Sign up failed");
        throw Exception("Sign up failed");
      }
    }
    catch (e) {
      print("Error: $e");
    }
  }
}
