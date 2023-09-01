import 'package:flutter/material.dart';
import 'package:gym_app/helper/show_message.dart';
import 'package:gym_app/widgets/custom_buttons.dart';
import 'package:gym_app/widgets/items.dart';
import '../controller/file_operations.dart';
import 'package:gym_app/models/model.dart';
import '../constants.dart';

class CalfPage extends StatefulWidget {
  const CalfPage({super.key});

  @override
  State<CalfPage> createState() => _CalfPageState();
}

class _CalfPageState extends State<CalfPage> {
  Model model = Model();

  final List<String> images = [
    'assets/images/calf/1.jpg',
    'assets/images/calf/2.jpg',
  ];

  final List<String> filesNames = [
    'calfReps1.txt',
    'calfWeight1.txt',
    'calfReps2.txt',
    'calfWeight2.txt',
    'calfReps3.txt',
    'calfWeight3.txt',
    'calfReps4.txt',
    'calfWeight4.txt',
    'calfReps5.txt',
    'calfWeight5.txt',
    'calfReps6.txt',
    'calfWeight6.txt'
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
          'Calf',
          style: TextStyle(fontSize: 30, fontFamily: 'Pacifico'),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            width: 400,
            child: Scrollbar(
              child: ListView(
                physics: const BouncingScrollPhysics(),
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
                  const SizedBox(height: 20),
                  CustomButton.saveAndClear(filesNames, model),
                  const SizedBox(height: 15),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
