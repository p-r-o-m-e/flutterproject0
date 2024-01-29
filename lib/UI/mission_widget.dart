// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:webapp/util/Constants.dart';

class missionWidget extends StatelessWidget {
  final Size resolutionSize;
  const missionWidget({super.key, required this.resolutionSize});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
          width: resolutionSize.width / 2, height: resolutionSize.height / 2),
      child: Column(
        children: [
          // Text("${size.height}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: resolutionSize.height * 0.07,
              ),
              Text(
                "OUR MISSION",
                style: Styles.sectionHeadingTextStyle,
              )
            ],
          ),
          // SizedBox(
          //   height: size.height * 0.07,
          // ),
          Container(
            // color: Colors.white10,
            margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
            child: Wrap(
              // alignment: WrapAlignment.center,
              children: [
                Text(
                    textAlign: TextAlign.justify,
                    style: Styles.sectionInnerTextStyle,
                    "Empowering our nation through impactful software solutions, at PractiKL technologies we are driven by an unwavering passion for what we do. We believe in the collective progress of our economy. Ultilizing cutting-edge techonologies to the growth and advancement of our society beyond borders. We are dedicated to delivering excellence and fostering a culture of continuous learning and collaboration. And nurturing scholars that stand at forefront of the digital era, embodying the values of passion, nationalism, and technological prosperity.")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
