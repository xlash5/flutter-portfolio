import 'package:flutter/material.dart';
import './screens/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // Using "static" so that we can easily access it later
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Muhammet Enes ilhan',
            //Light theme colors here
            theme: ThemeData.light().copyWith(
              primaryColor: const Color.fromARGB(255, 5, 175, 167),
              cardColor: const Color.fromARGB(255, 17, 24, 39),
              canvasColor: const Color.fromARGB(255, 54, 54, 54),
              buttonColor: Colors.white,
              textTheme: TextTheme(
                bodySmall: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 226, 226, 226),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
                bodyMedium: GoogleFonts.pacifico(
                  color: const Color.fromARGB(255, 17, 24, 39),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
                bodyLarge: GoogleFonts.pacifico(
                  color: const Color.fromARGB(255, 17, 24, 39),
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            //Dark theme colors here
            darkTheme: ThemeData.dark().copyWith(
              primaryColor: const Color.fromARGB(255, 17, 24, 39),
              cardColor: const Color.fromARGB(255, 226, 226, 226),
              canvasColor: const Color.fromARGB(255, 54, 54, 54),
              textTheme: TextTheme(
                bodySmall: GoogleFonts.roboto(
                  color: const Color.fromARGB(255, 226, 226, 226),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                ),
                bodyMedium: GoogleFonts.pacifico(
                  color: const Color.fromARGB(255, 226, 226, 226),
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
                bodyLarge: GoogleFonts.pacifico(
                  color: const Color.fromARGB(255, 226, 226, 226),
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            themeMode: currentMode,
            home: const HomePage(),
          );
        });
  }
}
