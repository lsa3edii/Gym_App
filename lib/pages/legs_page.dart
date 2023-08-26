import 'package:flutter/material.dart';
import 'package:gym_app/helper/show_message.dart';
import 'package:gym_app/widgets/custom_buttons.dart';
import 'package:gym_app/widgets/items.dart';
import '../controller/file_operations.dart';
import 'package:gym_app/models/model.dart';
import '../constants.dart';

class LegsPage extends StatefulWidget {
  const LegsPage({super.key});

  @override
  State<LegsPage> createState() => _LegsPageState();
}

class _LegsPageState extends State<LegsPage> {
  Model model = Model();

  final List<String> images = [
    'assets/images/legs/1.jpg',
    'assets/images/legs/2.jpg',
    'assets/images/legs/3.jpg',
    'assets/images/legs/4.jpg',
    'assets/images/legs/5.jpg',
  ];

  final List<String> filesNames = [
    'legsReps1.txt',
    'legsWeight1.txt',
    'legsReps2.txt',
    'legsWeight2.txt',
    'legsReps3.txt',
    'legsWeight3.txt',
    'legsReps4.txt',
    'legsWeight4.txt',
    'legsReps5.txt',
    'legsWeight5.txt',
    'legsReps6.txt',
    'legsWeight6.txt',
    'legsReps7.txt',
    'legsWeight7.txt',
    'legsReps8.txt',
    'legsWeight8.txt',
    'legsReps9.txt',
    'legsWeight9.txt',
    'legsReps10.txt',
    'legsWeight10.txt',
    'legsReps11.txt',
    'legsWeight11.txt',
    'legsReps12.txt',
    'legsWeight12.txt',
    'legsReps13.txt',
    'legsWeight13.txt',
    'legsReps14.txt',
    'legsWeight14.txt',
    'legsReps15.txt',
    'legsWeight15.txt',
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
          'Legs',
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
