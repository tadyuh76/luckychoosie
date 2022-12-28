import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luckychoosie/constants/colors.dart';
import 'package:luckychoosie/models/choosie.dart';
import 'package:luckychoosie/screens/loading.dart';
import 'package:luckychoosie/widgets/background.dart';
import 'package:luckychoosie/widgets/choosie_widget.dart';

class ChoosieScreen extends StatelessWidget {
  const ChoosieScreen({super.key});

  Stream _getStream() {
    try {
      return FirebaseFirestore.instance.collection("choosie").snapshots();
    } catch (e) {
      print("error getting stream: $e");
    }
    return Stream.error("");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kBlack,
        title: Text(
          "HELP ME CHOOSE",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
      body: Background(
        child: StreamBuilder(
          stream: _getStream(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const LoadingScreen();
            }
            if (snapshot.hasData) {
              final choosies = snapshot.data!.docs
                  .map((e) => Choosie.fromJson(e.data()))
                  .toList();
              choosies.add(choosies[0]);
              choosies.add(choosies[0]);
              choosies.add(choosies[0]);

              return ScrollConfiguration(
                behavior:
                    ScrollConfiguration.of(context).copyWith(scrollbars: false),
                child: ListView.builder(
                  padding: const EdgeInsets.all(20),
                  itemCount: choosies.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return ChoosieWidget(choosie: choosies[index]);
                  },
                ),
              );
            }
            return Text(snapshot.error.toString());
          },
        ),
      ),
    );
  }
}
