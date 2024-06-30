import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';

class FirebaseUploadImageService {
  final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;

  Future<void> uploadFile(
      Uint8List filePath,
      String fileName,
      ) async {
    try {
      await _firebaseStorage.ref().child(fileName).putData(filePath);
    } catch (e) {
      print(e);
    }
  }

  Future<void> uploadFileFromAsset(
      String assetPath,
      String fileName,
      ) async {
    try {
      // Load asset file as byte data
      ByteData data = await rootBundle.load(assetPath);
      Uint8List imageData = data.buffer.asUint8List();

      // Upload image data to Firebase Storage
      await FirebaseStorage.instance.ref().child(fileName).putData(imageData);

      print("Image uploaded successfully!");
    } catch (e) {
      print("Error uploading image: $e");
    }
  }

  Future<String> getDownloadURL(String fileName) async {
    try {
      return await _firebaseStorage
          .ref()
          .child(fileName)
          .getDownloadURL();
    } catch (e) {
      return "";
    }
  }

  Future<void> deleteFile(String fileName) async {
    try {
      await _firebaseStorage.ref().child(fileName).delete();
    } catch (e) {
      print(e);
    }
  }
}