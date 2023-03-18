import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_asif_taj_tutorial/state_management/example_two.dart';
import 'package:getx_asif_taj_tutorial/state_management/getx_counter.dart';
import 'package:getx_asif_taj_tutorial/state_management/simple_counter.dart';
import 'utils/height_width.dart';
import 'utils/language_screen.dart';

import 'utils/snackbar_bottomsheet_theme.dart';
import 'utils/routes_navigation.dart';
import 'utils/screen_one.dart';
import 'utils/screen_two.dart';

import 'utils/languages_model.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: 'GetX Demo',
        locale: Locale('en', 'US'),
        // locale: const Locale('ur', 'PK'),
        translations: Languages(),
        fallbackLocale: const Locale('en', 'US'),
        theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: TextTheme(
              bodyMedium: TextStyle(fontSize: 60),
              labelLarge: TextStyle(fontSize: 60),
              titleMedium: TextStyle(fontSize: 60),
            )),
        // home: const SnackBarBottomSheetTheme(),
        // home: const RoutesNavigation(),
        // home: const HeightWidth(),
        // home: const LanguagesScreen(),
        // home: const SimpleCounter(),
        // home: const GetxCounter(),
        home: const ExampleTwo(),
        // Routes with GetX
        // getPages: [
        //   GetPage(name: '/', page: () => RoutesNavigation()),
        //   GetPage(name: '/screenOne', page: () => ScreenOne(name: 'Muhammad Bilal')),
        //   GetPage(name: '/screenOne', page: () => ScreenTwo()),
        // ],
      );
}
