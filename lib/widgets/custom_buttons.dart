import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/model.dart';
import '../controller/file_operations.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final VoidCallback? onPressed;

  const CustomButton(
      {super.key, required this.buttonName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        minimumSize: const Size(120, 30),
      ),
      onPressed: onPressed ?? () {},
      child: Text(
        buttonName,
        style: const TextStyle(fontSize: 20, fontFamily: 'Pacifico'),
      ),
    );
  }

  static Row saveAndClear(List<String> filesNames, Model model) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisSize: MainAxisSize.min,
      children: [
        CustomButton(
          buttonName: 'Save',
          onPressed: () {
            FileOperations.saveData(
                filesNames: filesNames,
                values: model.values,
                dataStored: model.dataStored);
          },
        ),
        const SizedBox(width: 10),
        CustomButton(
          buttonName: 'Clear',
          onPressed: () {
            FileOperations.clearData(
                values: model.values, dataStored: model.dataStored);
          },
        ),
      ],
    );
  }
}
