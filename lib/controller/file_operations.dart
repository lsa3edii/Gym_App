import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class FileOperations {
  FileOperations();

  static Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  static Future<File> _getLocalFile(String fileName) async {
    final path = await _localPath;
    return File('$path/$fileName');
  }

  // static Future<File> saveData(String fileName, String data) async {
  //   final file = await _getLocalFile(fileName);
  //   return file.writeAsString(data);
  // }

  static Future<File> writeToFile(String fileName, Uint8List data) async {
    final file = await _getLocalFile(fileName);
    return file.writeAsBytes(
      data, /* mode: FileMode.append */
    );
  }

  static Future<String> readFromFile(String fileName) async {
    final file = await _getLocalFile(fileName);
    return file.readAsString();
  }

  static void saveData(
      {required List<String> filesNames,
      required List<String> values,
      required List<TextEditingController> dataStored}) {
    for (int i = 0; i < filesNames.length; i++) {
      writeToFile(filesNames[i], Uint8List.fromList(values[i].codeUnits));
      dataStored[i].text = values[i];
    }
  }

  static void retrieveData(
      {required List<String> filesNames,
      required List<String> values,
      required List<TextEditingController> dataStored}) {
    for (int i = 0; i < filesNames.length; i++) {
      readFromFile(filesNames[i]).then(
        (value) => {values[i] = dataStored[i].text = value},
      );
    }
  }

  static void clearData(
      {required List<String> values,
      required List<TextEditingController> dataStored}) {
    for (int i = 0; i < values.length; i++) {
      values[i] = dataStored[i].text = '';
    }
  }
}
