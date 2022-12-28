import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luckychoosie/constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(kIsWeb ? 100 : 40),
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [kPrimaryColor, kSecondaryColor],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            Text(
              "LUCKY CHOOSIE",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w900,
                color: kBlack,
                fontSize: 60,
                height: 0.9,
                letterSpacing: 2,
              ),
            ),
            const Text(
              "Cannot figure out which option to choose ? Let everyone choose it for you!",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 60),
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 520),
                child: InkWell(
                  onTap: () => Navigator.pushNamed(context, "/choosie"),
                  onHover: (val) => setState(() => hover = val),
                  onHighlightChanged: (val) => setState(() => hover = val),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(width: 4, color: kBlack),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: hover ? kWhite : kBlack,
                    ),
                    child: Text(
                      "LET'S CHOOSE!",
                      style: GoogleFonts.poppins(
                        color: hover ? kBlack : kWhite,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
