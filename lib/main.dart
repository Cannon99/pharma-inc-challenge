import 'package:challenge/pages/home.dart';
import 'package:challenge/pages/patients.dart';
import 'package:challenge/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:loader_overlay/loader_overlay.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GlobalLoaderOverlay(
      overlayOpacity: 0.8,
      overlayColor: Colors.black,
      child: MaterialApp(
        title: 'Challenge Pharma INC',
        theme: ThemeData(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: const Color(0xFF003461),
                secondary: const Color(0xFF00AFAD),
                primaryVariant: const Color(0xFF0083CA),
              ),
          textTheme: ThemeData.light().textTheme.copyWith(
                headline1: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.w400,
                ),
                headline2: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w400,
                ),
                headline3: const TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                  fontWeight: FontWeight.w400,
                ),
                headline4: const TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.w700,
                ),
              ),
        ),
        home: const Home(),
        routes: {
          AppRoutes.home: (context) => const Home(),
          AppRoutes.patients: (context) => const Patients(),
        },
      ),
    );
  }
}
