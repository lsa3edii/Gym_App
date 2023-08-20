// import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:gym_app/controller/file_operations.dart';
import '../constants.dart';

// String? value0, value1;
List<String> values = ['', ''];

List<TextEditingController> dataStored = [
  TextEditingController(),
  TextEditingController()
];

List<String> filesNames = ['test0.txt', 'test1.txt'];

// List<FileOperations> fileOperations = [FileOperations(), FileOperations()];

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  // dynamic text;
  // String? textTemp;

  @override
  void initState() {
    super.initState();
    try {
      setState(() {
        FileOperations.retrieveData(
            filesNames: filesNames, values: values, dataStored: dataStored);
      });
    } on Exception {/* */}
  }

  // void saveData(
  //     {required List<String> filesNames,
  //     required List<String> values,
  //     required List<TextEditingController> dataStored}) {
  //   for (int i = 0; i < filesNames.length; i++) {
  //     FileOperations.writeToFile(
  //         filesNames[i], Uint8List.fromList(values[i].codeUnits));
  //     setState(
  //       () {
  //         dataStored[i].text = values[i];
  //       },
  //     );
  //   }
  // }

  // void retrieveData(
  //     {required List<String> filesNames,
  //     required List<String> values,
  //     required List<TextEditingController> dataStored}) {
  //   for (int i = 0; i < filesNames.length; i++) {
  //     FileOperations.readFromFile(filesNames[i]).then(
  //       (value) => {
  //         setState(() {
  //           values[i] = dataStored[i].text = value;
  //         })
  //       },
  //     );
  //   }
  // }

  // void clearData(
  //     {required List<String> values,
  //     required List<TextEditingController> dataStored}) {
  //   for (int i = 0; i < values.length; i++) {
  //     values[i] = dataStored[i].text = '';
  //   }
  // }

  // @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          'Test',
          style: TextStyle(fontSize: 30, fontFamily: 'Pacifico'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 35,
                  width: 125,
                  child: TextField(
                    controller: dataStored[0],
                    onChanged: (data) {
                      values[0] = data;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                    style:
                        const TextStyle(fontSize: 17, fontFamily: 'Pacifico'),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  height: 35,
                  width: 125,
                  child: TextField(
                    controller: dataStored[1],
                    onChanged: (data) {
                      values[1] = data;
                    },
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                    style:
                        const TextStyle(fontSize: 17, fontFamily: 'Pacifico'),
                  ),
                ),
              ],
            ),
            // Text(dataStored ?? 'data'),
            const SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                    ),
                    onPressed: () {
                      setState(() {
                        FileOperations.saveData(
                            filesNames: filesNames,
                            values: values,
                            dataStored: dataStored);
                      });
                    },
                    child: const Text(
                      'Save',
                      style: TextStyle(fontSize: 20, fontFamily: 'Pacifico'),
                    )),
                const SizedBox(width: 5),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                    ),
                    onPressed: () {
                      setState(() {
                        FileOperations.clearData(
                            values: values, dataStored: dataStored);
                      });
                    },
                    child: const Text(
                      'Clear',
                      style: TextStyle(fontSize: 20, fontFamily: 'Pacifico'),
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
