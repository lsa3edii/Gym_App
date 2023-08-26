import 'package:flutter/material.dart';
import 'package:gym_app/helper/show_message.dart';
import 'package:gym_app/widgets/custom_buttons.dart';
import 'package:gym_app/widgets/items.dart';
import '../controller/file_operations.dart';
import 'package:gym_app/models/model.dart';
import '../constants.dart';

class TricepsPage extends StatefulWidget {
  const TricepsPage({super.key});

  @override
  State<TricepsPage> createState() => _TricepsPageState();
}

class _TricepsPageState extends State<TricepsPage> {
  Model model = Model();

  final List<String> images = [
    'assets/images/triceps/1.jpg',
    'assets/images/triceps/2.jpg',
    'assets/images/triceps/3.jpg',
    'assets/images/triceps/4.jpg',
    'assets/images/triceps/5.jpg',
  ];

  final List<String> filesNames = [
    'triReps1.txt',
    'triWeight1.txt',
    'triReps2.txt',
    'triWeight2.txt',
    'triReps3.txt',
    'triWeight3.txt',
    'triReps4.txt',
    'triWeight4.txt',
    'triReps5.txt',
    'triWeight5.txt',
    'triReps6.txt',
    'triWeight6.txt',
    'triReps7.txt',
    'triWeight7.txt',
    'triReps8.txt',
    'triWeight8.txt',
    'triReps9.txt',
    'triWeight9.txt',
    'triReps10.txt',
    'triWeight10.txt',
    'triReps11.txt',
    'triWeight11.txt',
    'triReps12.txt',
    'triWeight12.txt',
    'triReps13.txt',
    'triWeight13.txt',
    'triReps14.txt',
    'triWeight14.txt',
    'triReps15.txt',
    'triWeight15.txt',
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
          'Triceps',
          style: TextStyle(fontSize: 30, fontFamily: 'Pacifico'),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: 400,
            child: ListView(
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
                const SizedBox(height: 20),
                CustomButton.saveAndClear(filesNames, model),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
