import 'package:flutter/material.dart';
import 'package:luckychoosie/constants/colors.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [kPrimaryColor, kSecondaryColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SizedBox(
              width: 80,
              height: 80,
              child: CircularProgressIndicator(
                color: kWhite,
                strokeWidth: 10,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Loading",
              style: TextStyle(
                color: kWhite,
                letterSpacing: 4,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
