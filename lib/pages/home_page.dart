import 'package:flutter/material.dart';
import 'package:gym_app/constants.dart';
import 'package:gym_app/pages/abs_page.dart';
import 'package:gym_app/pages/back_page.dart';
import 'package:gym_app/pages/biceps_page.dart';
import 'package:gym_app/pages/calf_page.dart';
import 'package:gym_app/pages/chest_page.dart';
import 'package:gym_app/pages/forearms_page.dart';
import 'package:gym_app/pages/legs_page.dart';
import 'package:gym_app/pages/shoulders_page.dart';
import 'package:gym_app/pages/triceps_page.dart';
import 'package:gym_app/widgets/categories.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
// import 'package:gym_app/pages/test_page.dart';

class HomePage extends StatelessWidget {
  final List<String> exercises = [
    'Chest',
    'Back',
    'Shoulders',
    'Biceps',
    'Triceps',
    'Forearms',
    'Legs',
    'Calf',
    'Abs',
    // 'Test',
  ];

  final List<String> imagesOfExercises = [
    'assets/icons/chest.jpg',
    'assets/icons/back.jpg',
    'assets/icons/shoulders.jpg',
    'assets/icons/biceps.jpg',
    'assets/icons/triceps.jpg',
    'assets/icons/forearms.jpg',
    'assets/icons/legs.jpg',
    'assets/icons/calf.jpg',
    'assets/icons/abs.jpg',
    // 'assets/icons/test.png',
  ];

  HomePage({super.key});

  Future<void> handlerRefresh() async {
    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Center(
          child: Text(
            'Gym App',
            style: TextStyle(fontSize: 30, fontFamily: 'Pacifico'),
          ),
        ),
      ),
      body: LiquidPullToRefresh(
        color: kPrimaryColor,
        animSpeedFactor: 10,
        showChildOpacityTransition: false,
        onRefresh: handlerRefresh,
        // springAnimationDurationInMilliseconds: 1000,
        child: Scrollbar(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.only(top: 10, bottom: 30),
            itemCount: exercises.length,
            itemBuilder: (context, i) {
              return Category(
                buttonName: exercises[i],
                image: imagesOfExercises[i],
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return getPage(i)!;
                  }));
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget? getPage(int n) {
    switch (n) {
      case 0:
        return const ChestPage();
      case 1:
        return const BackPage();
      case 2:
        return const ShouldersPage();
      case 3:
        return const BicepsPage();
      case 4:
        return const TricepsPage();
      case 5:
        return const ForearmsPage();
      case 6:
        return const LegsPage();
      case 7:
        return const CalfPage();
      case 8:
        return const AbsPage();
      // case 9:
      //   return const TestPage();
      default:
        return null;
    }
  }
}
