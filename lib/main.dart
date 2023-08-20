import 'package:flutter/material.dart';
import 'package:gym_app/pages/home_page.dart';
import 'package:flutter/services.dart';
// import 'package:responsive_framework/responsive_framework.dart';
// import 'package:device_preview/device_preview.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(const GymApp());
  // runApp(DevicePreview(builder: (context) => const GymApp()));
}

class GymApp extends StatelessWidget {
  const GymApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: DevicePreview.appBuilder,
      // builder: (context, child) {
      //   return ResponsiveWrapper.builder(
      //     ClampingScrollWrapper.builder(context, child!),
      //     defaultScale: true,
      //     breakpoints: [
      //       const ResponsiveBreakpoint.resize(350, name: MOBILE),
      //       const ResponsiveBreakpoint.autoScale(800, name: TABLET),
      //       const ResponsiveBreakpoint.autoScale(100, name: TABLET),
      //       const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
      //     ],
      //     // breakpointsLandscape: [],
      //   );
      // },
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(brightness: Brightness.dark),
      home: HomePage(),
    );
  }
}
