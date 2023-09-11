import 'package:flutter/material.dart';
import 'package:sims_ppob/injection_container.dart' as di;
import 'package:sims_ppob/routes/routes_imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: goRouter,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'plusJakartaSans',
        useMaterial3: true,
        brightness: Brightness.light,
        inputDecorationTheme: const InputDecorationTheme(
          contentPadding: EdgeInsets.all(12),
          border: OutlineInputBorder(),
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: const Color(0xFF0A7AFF),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: const BorderSide(color: Color(0xFF0A7AFF)),
            ),
          ),
        ),

      ),
    );
  }
}