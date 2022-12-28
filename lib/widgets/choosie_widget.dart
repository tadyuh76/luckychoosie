import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luckychoosie/constants/colors.dart';
import 'package:luckychoosie/models/choosie.dart';

class ChoosieWidget extends StatefulWidget {
  final Choosie choosie;
  const ChoosieWidget({super.key, required this.choosie});

  @override
  State<ChoosieWidget> createState() => _ChoosieWidgetState();
}

class _ChoosieWidgetState extends State<ChoosieWidget> {
  bool hover = false;
  void setHover(bool val) {
    setState(() => hover = val);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      padding: const EdgeInsets.only(bottom: 20),
      child: Material(
        color: Colors.transparent,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {},
          onHighlightChanged: setHover,
          onHover: setHover,
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: hover ? kBlack : kWhite,
              borderRadius: BorderRadius.all(Radius.circular(hover ? 20 : 10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.choosie.description,
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: hover ? kWhite : kBlack,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "${widget.choosie.values.length} options",
                  style: const TextStyle(color: kGrey),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        color: kWhite,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        // boxShadow: [kShadow],
                        border: Border.all(color: kPrimaryColor, width: 3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: const BoxDecoration(
                            color: kBlack,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      widget.choosie.userName,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.bold,
                        color: hover ? kWhite : kBlack,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
