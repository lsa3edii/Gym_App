import 'package:flutter/material.dart';
import 'package:gym_app/helper/show_message.dart';
import 'package:gym_app/widgets/custom_buttons.dart';
import 'package:gym_app/widgets/items.dart';
import '../controller/file_operations.dart';
import '../models/model.dart';
import '../constants.dart';

class BackPage extends StatefulWidget {
  const BackPage({super.key});

  @override
  State<BackPage> createState() => _BackPageState();
}

class _BackPageState extends State<BackPage> {
  Model model = Model();

  final List<String> images = [
    'assets/images/back/1.jpg',
    'assets/images/back/2.jpg',
    'assets/images/back/3.jpg',
    'assets/images/back/4.jpg',
    'assets/images/back/5.jpg',
    'assets/images/back/6.jpg',
    'assets/images/back/7.jpg',
  ];

  final List<String> filesNames = [
    'backReps1.txt',
    'backWeight1.txt',
    'backReps2.txt',
    'backWeight2.txt',
    'backReps3.txt',
    'backWeight3.txt',
    'backReps4.txt',
    'backWeight4.txt',
    'backReps5.txt',
    'backWeight5.txt',
    'backReps6.txt',
    'backWeight6.txt',
    'backReps7.txt',
    'backWeight7.txt',
    'backReps8.txt',
    'backWeight8.txt',
    'backReps9.txt',
    'backWeight9.txt',
    'backReps10.txt',
    'backWeight10.txt',
    'backReps11.txt',
    'backWeight11.txt',
    'backReps12.txt',
    'backWeight12.txt',
    'backReps13.txt',
    'backWeight13.txt',
    'backReps14.txt',
    'backWeight14.txt',
    'backReps15.txt',
    'backWeight15.txt',
    'backReps16.txt',
    'backWeight16.txt',
    'backReps17.txt',
    'backWeight17.txt',
    'backReps18.txt',
    'backWeight18.txt',
    'backReps19.txt',
    'backWeight19.txt',
    'backReps20.txt',
    'backWeight20.txt',
    'backReps21.txt',
    'backWeight21.txt',
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
          'Back',
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
                  Item(
                    image: images[6],
                    dataStored0: model.dataStored[36],
                    onChanged0: (data) {
                      model.values[36] = data;
                    },
                    dataStored1: model.dataStored[37],
                    onChanged1: (data) {
                      model.values[37] = data;
                    },
                    dataStored2: model.dataStored[38],
                    onChanged2: (data) {
                      model.values[38] = data;
                    },
                    dataStored3: model.dataStored[39],
                    onChanged3: (data) {
                      model.values[39] = data;
                    },
                    dataStored4: model.dataStored[40],
                    onChanged4: (data) {
                      model.values[40] = data;
                    },
                    dataStored5: model.dataStored[41],
                    onChanged5: (data) {
                      model.values[41] = data;
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
