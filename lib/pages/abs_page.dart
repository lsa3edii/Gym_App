import 'package:flutter/material.dart';
import 'package:gym_app/helper/show_message.dart';
import 'package:gym_app/widgets/custom_buttons.dart';
import 'package:gym_app/widgets/items.dart';
import '../controller/file_operations.dart';
import '../models/model.dart';
import '../constants.dart';

class AbsPage extends StatefulWidget {
  const AbsPage({super.key});

  @override
  State<AbsPage> createState() => _AbsPageState();
}

class _AbsPageState extends State<AbsPage> {
  Model model = Model();

  final List<String> images = ['assets/images/abs/1.jpg'];

  final List<String> filesNames = [
    'absReps1.txt',
    'absWeight1.txt',
    'absReps2.txt',
    'absWeight2.txt',
    'absReps3.txt',
    'absWeight3.txt'
  ];

  @override
  void initState() {
    super.initState();
    try {
      setState(() {
        FileOperations.retrieveData(
            filesNames: filesNames,
            values: model.values,
            dataStored: model.dataStored);
      });
    } catch (ex) {
      showSnackBar(context, message: ex.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          'Abs',
          style: TextStyle(fontSize: 30, fontFamily: 'Pacifico'),
        ),
      ),
      body: ListView(
        children: [
          Item(
            image: images[0],
            dataStored0: model.dataStored[0],
            onChanged0: (data) {
              model.values[0] = data;
            },
            dataStored1: model.dataStored[1],
            onChanged1: (data) {
              model.values[1] = data;
            },
            dataStored2: model.dataStored[2],
            onChanged2: (data) {
              model.values[2] = data;
            },
            dataStored3: model.dataStored[3],
            onChanged3: (data) {
              model.values[3] = data;
            },
            dataStored4: model.dataStored[4],
            onChanged4: (data) {
              model.values[4] = data;
            },
            dataStored5: model.dataStored[5],
            onChanged5: (data) {
              model.values[5] = data;
            },
          ),
          const SizedBox(height: 20),
          CustomButton.saveAndClear(filesNames, model),
          const SizedBox(height: 15),
        ],
      ),
    );
  }

  // List<Widget> getItems({
  //   required List<String> images,
  //   required List<String> filesNames,
  //   required List<String> values,
  //   required List<TextEditingController> dataStored,
  // }) {
  //   List<Widget> items = [];

  //   for (int i = 0; i < images.length; i++) {
  //     // for (int j = 0; j < filesNames.length; j++) {
  //     items.add(
  //       NewItems(
  //         image: images[i],
  //         dataStored0: dataStored[0],
  //         onChanged0: (data) {
  //           values[0] = data;
  //         },
  //         dataStored1: dataStored[1],
  //         onChanged1: (data) {
  //           values[1] = data;
  //         },
  //         dataStored2: dataStored[2],
  //         onChanged2: (data) {
  //           values[2] = data;
  //         },
  //         dataStored3: dataStored[3],
  //         onChanged3: (data) {
  //           values[3] = data;
  //         },
  //         dataStored4: dataStored[4],
  //         onChanged4: (data) {
  //           values[4] = data;
  //         },
  //         dataStored5: dataStored[5],
  //         onChanged5: (data) {
  //           values[5] = data;
  //         },
  //       ),
  //     );
  //     // }
  //   }
  //   items.add(
  //     Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         CustomButton(
  //           butonName: 'Save',
  //           onPressed: () {
  //             setState(() {
  //               FileOperations.saveData(
  //                   filesNames: filesNames,
  //                   values: values,
  //                   dataStored: dataStored);
  //             });
  //           },
  //         ),
  //         const SizedBox(width: 10),
  //         CustomButton(
  //           butonName: 'Clear',
  //           onPressed: () {
  //             setState(() {
  //               FileOperations.clearData(
  //                   values: values, dataStored: dataStored);
  //             });
  //           },
  //         ),
  //       ],
  //     ),
  //   );
  //   return items;
  // }
}
