import 'package:flutter/material.dart';
import 'custom_text.dart';
import 'custom_text_field.dart';
import '../constants.dart';

class Sets extends StatelessWidget {
  final String setNo;

  final TextEditingController? controller0;
  final Function(String data)? onChanged0;

  final TextEditingController? controller1;
  final Function(String data)? onChanged1;

  const Sets({
    super.key,
    required this.setNo,
    required this.controller0,
    required this.onChanged0,
    required this.controller1,
    required this.onChanged1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, left: 3),
      height: 90,
      width: 97,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kContainerColor,
      ),
      child: Row(
        children: [
          Column(
            children: [
              CustomText(
                text: '{ Set $setNo }',
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 16),
                    child: CustomText(text: 'Reps '),
                  ),
                  CustomTextField(
                      controller: controller0, onChanged: onChanged0),
                ],
              ),
              Row(
                children: [
                  const CustomText(text: 'Weight '),
                  CustomTextField(
                      controller: controller1, onChanged: onChanged1),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  final String? image;

  final TextEditingController? dataStored0;
  final Function(String data)? onChanged0;

  final TextEditingController? dataStored1;
  final Function(String data)? onChanged1;

  final TextEditingController? dataStored2;
  final Function(String data)? onChanged2;

  final TextEditingController? dataStored3;
  final Function(String data)? onChanged3;

  final TextEditingController? dataStored4;
  final Function(String data)? onChanged4;

  final TextEditingController? dataStored5;
  final Function(String data)? onChanged5;

  const Item({
    super.key,
    required this.image,
    required this.dataStored0,
    required this.onChanged0,
    required this.dataStored1,
    required this.onChanged1,
    required this.dataStored2,
    required this.onChanged2,
    required this.dataStored3,
    required this.onChanged3,
    required this.dataStored4,
    required this.onChanged4,
    required this.dataStored5,
    required this.onChanged5,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(image!, height: 80, width: 80),
          Sets(
            setNo: '1',
            controller0: dataStored0,
            onChanged0: onChanged0,
            controller1: dataStored1,
            onChanged1: onChanged1,
          ),
          const SizedBox(width: 10),
          Sets(
            setNo: '2',
            controller0: dataStored2,
            onChanged0: onChanged2,
            controller1: dataStored3,
            onChanged1: onChanged3,
          ),
          const SizedBox(width: 10),
          Sets(
            setNo: '3',
            controller0: dataStored4,
            onChanged0: onChanged4,
            controller1: dataStored5,
            onChanged1: onChanged5,
          ),
          // const SizedBox(width: 10),
          // Sets(setNo: '4'),
        ],
      ),
    );
  }
}
