import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luckychoosie/firebase_options.dart';
import 'package:luckychoosie/screens/choosie.dart';
import 'package:luckychoosie/screens/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        textTheme: GoogleFonts.interTextTheme(ThemeData().textTheme),
      ),
      routes: {
        "/": (context) => const HomeScreen(),
        "/choosie": (context) => const ChoosieScreen(),
      },
    );
  }
}
