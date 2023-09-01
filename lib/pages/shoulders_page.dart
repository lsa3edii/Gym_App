import 'package:flutter/material.dart';
import 'package:gym_app/helper/show_message.dart';
import 'package:gym_app/widgets/custom_buttons.dart';
import 'package:gym_app/widgets/items.dart';
import '../controller/file_operations.dart';
import 'package:gym_app/models/model.dart';
import '../constants.dart';

class ShouldersPage extends StatefulWidget {
  const ShouldersPage({super.key});

  @override
  State<ShouldersPage> createState() => _ShouldersPageState();
}

class _ShouldersPageState extends State<ShouldersPage> {
  Model model = Model();

  final List<String> images = [
    'assets/images/shoulders/1.jpg',
    'assets/images/shoulders/2.jpg',
    'assets/images/shoulders/3.jpg',
    'assets/images/shoulders/4.jpg',
    'assets/images/shoulders/5.jpg',
    'assets/images/shoulders/6.jpg',
    'assets/images/shoulders/7.jpg',
    'assets/images/shoulders/8.jpg',
  ];

  final List<String> filesNames = [
    'shouldersReps1.txt',
    'shouldersWeight1.txt',
    'shouldersReps2.txt',
    'shouldersWeight2.txt',
    'shouldersReps3.txt',
    'shouldersWeight3.txt',
    'shouldersReps4.txt',
    'shouldersWeight4.txt',
    'shouldersReps5.txt',
    'shouldersWeight5.txt',
    'shouldersReps6.txt',
    'shouldersWeight6.txt',
    'shouldersReps7.txt',
    'shouldersWeight7.txt',
    'shouldersReps8.txt',
    'shouldersWeight8.txt',
    'shouldersReps9.txt',
    'shouldersWeight9.txt',
    'shouldersReps10.txt',
    'shouldersWeight10.txt',
    'shouldersReps11.txt',
    'shouldersWeight11.txt',
    'shouldersReps12.txt',
    'shouldersWeight12.txt',
    'shouldersReps13.txt',
    'shouldersWeight13.txt',
    'shouldersReps14.txt',
    'shouldersWeight14.txt',
    'shouldersReps15.txt',
    'shouldersWeight15.txt',
    'shouldersReps16.txt',
    'shouldersWeight16.txt',
    'shouldersReps17.txt',
    'shouldersWeight17.txt',
    'shouldersReps18.txt',
    'shouldersWeight18.txt',
    'shouldersReps19.txt',
    'shouldersWeight19.txt',
    'shouldersReps20.txt',
    'shouldersWeight20.txt',
    'shouldersReps21.txt',
    'shouldersWeight21.txt',
    'shouldersReps22.txt',
    'shouldersWeight22.txt',
    'shouldersReps23.txt',
    'shouldersWeight23.txt',
    'shouldersReps24.txt',
    'shouldersWeight24.txt',
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
          'Shoulders',
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
                  Item(
                    image: images[7],
                    dataStored0: model.dataStored[42],
                    onChanged0: (data) {
                      model.values[42] = data;
                    },
                    dataStored1: model.dataStored[43],
                    onChanged1: (data) {
                      model.values[43] = data;
                    },
                    dataStored2: model.dataStored[44],
                    onChanged2: (data) {
                      model.values[44] = data;
                    },
                    dataStored3: model.dataStored[45],
                    onChanged3: (data) {
                      model.values[45] = data;
                    },
                    dataStored4: model.dataStored[46],
                    onChanged4: (data) {
                      model.values[46] = data;
                    },
                    dataStored5: model.dataStored[47],
                    onChanged5: (data) {
                      model.values[47] = data;
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
