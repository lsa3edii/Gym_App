import 'package:flutter/material.dart';
import 'package:gym_app/helper/show_message.dart';
import 'package:gym_app/widgets/custom_buttons.dart';
import 'package:gym_app/widgets/items.dart';
import '../controller/file_operations.dart';
import 'package:gym_app/models/model.dart';
import '../constants.dart';

class ChestPage extends StatefulWidget {
  const ChestPage({super.key});

  @override
  State<ChestPage> createState() => _ChestPageState();
}

class _ChestPageState extends State<ChestPage> {
  Model model = Model();

  final List<String> images = [
    'assets/images/chest/1.jpg',
    'assets/images/chest/2.jpg',
    'assets/images/chest/3.jpg',
    'assets/images/chest/4.jpg',
    'assets/images/chest/5.jpg',
    'assets/images/chest/6.jpg',
  ];

  final List<String> filesNames = [
    'chestReps1.txt',
    'chestWeight1.txt',
    'chestReps2.txt',
    'chestWeight2.txt',
    'chestReps3.txt',
    'chestWeight3.txt',
    'chestReps4.txt',
    'chestWeight4.txt',
    'chestReps5.txt',
    'chestWeight5.txt',
    'chestReps6.txt',
    'chestWeight6.txt',
    'chestReps7.txt',
    'chestWeight7.txt',
    'chestReps8.txt',
    'chestWeight8.txt',
    'chestReps9.txt',
    'chestWeight9.txt',
    'chestReps10.txt',
    'chestWeight10.txt',
    'chestReps11.txt',
    'chestWeight11.txt',
    'chestReps12.txt',
    'chestWeight12.txt',
    'chestReps13.txt',
    'chestWeight13.txt',
    'chestReps14.txt',
    'chestWeight14.txt',
    'chestReps15.txt',
    'chestWeight15.txt',
    'chestReps16.txt',
    'chestWeight16.txt',
    'chestReps17.txt',
    'chestWeight17.txt',
    'chestReps18.txt',
    'chestWeight18.txt',
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
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text(
          'Chest',
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
          Item(
            image: images[1],
            dataStored0: model.dataStored[6],
            onChanged0: (data) {
              model.values[6] = data;
            },
            dataStored1: model.dataStored[7],
            onChanged1: (data) {
              model.values[7] = data;
            },
            dataStored2: model.dataStored[8],
            onChanged2: (data) {
              model.values[8] = data;
            },
            dataStored3: model.dataStored[9],
            onChanged3: (data) {
              model.values[9] = data;
            },
            dataStored4: model.dataStored[10],
            onChanged4: (data) {
              model.values[10] = data;
            },
            dataStored5: model.dataStored[11],
            onChanged5: (data) {
              model.values[11] = data;
            },
          ),
          Item(
            image: images[2],
            dataStored0: model.dataStored[12],
            onChanged0: (data) {
              model.values[12] = data;
            },
            dataStored1: model.dataStored[13],
            onChanged1: (data) {
              model.values[13] = data;
            },
            dataStored2: model.dataStored[14],
            onChanged2: (data) {
              model.values[14] = data;
            },
            dataStored3: model.dataStored[15],
            onChanged3: (data) {
              model.values[15] = data;
            },
            dataStored4: model.dataStored[16],
            onChanged4: (data) {
              model.values[16] = data;
            },
            dataStored5: model.dataStored[17],
            onChanged5: (data) {
              model.values[17] = data;
            },
          ),
          Item(
            image: images[3],
            dataStored0: model.dataStored[18],
            onChanged0: (data) {
              model.values[18] = data;
            },
            dataStored1: model.dataStored[19],
            onChanged1: (data) {
              model.values[19] = data;
            },
            dataStored2: model.dataStored[20],
            onChanged2: (data) {
              model.values[20] = data;
            },
            dataStored3: model.dataStored[21],
            onChanged3: (data) {
              model.values[21] = data;
            },
            dataStored4: model.dataStored[22],
            onChanged4: (data) {
              model.values[22] = data;
            },
            dataStored5: model.dataStored[23],
            onChanged5: (data) {
              model.values[23] = data;
            },
          ),
          Item(
            image: images[4],
            dataStored0: model.dataStored[24],
            onChanged0: (data) {
              model.values[24] = data;
            },
            dataStored1: model.dataStored[25],
            onChanged1: (data) {
              model.values[25] = data;
            },
            dataStored2: model.dataStored[26],
            onChanged2: (data) {
              model.values[26] = data;
            },
            dataStored3: model.dataStored[27],
            onChanged3: (data) {
              model.values[27] = data;
            },
            dataStored4: model.dataStored[28],
            onChanged4: (data) {
              model.values[28] = data;
            },
            dataStored5: model.dataStored[29],
            onChanged5: (data) {
              model.values[29] = data;
            },
          ),
          Item(
            image: images[5],
            dataStored0: model.dataStored[30],
            onChanged0: (data) {
              model.values[30] = data;
            },
            dataStored1: model.dataStored[31],
            onChanged1: (data) {
              model.values[31] = data;
            },
            dataStored2: model.dataStored[32],
            onChanged2: (data) {
              model.values[32] = data;
            },
            dataStored3: model.dataStored[33],
            onChanged3: (data) {
              model.values[33] = data;
            },
            dataStored4: model.dataStored[34],
            onChanged4: (data) {
              model.values[34] = data;
            },
            dataStored5: model.dataStored[35],
            onChanged5: (data) {
              model.values[35] = data;
            },
          ),
          const SizedBox(height: 20),
          CustomButton.saveAndClear(filesNames, model),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
