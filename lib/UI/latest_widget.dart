import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webapp/util/Constants.dart';

class LatestWidget extends StatefulWidget {
  final Size screenSize;
  const LatestWidget({super.key, required this.screenSize});

  @override
  State<LatestWidget> createState() => _LatestWidgetState();
}

class _LatestWidgetState extends State<LatestWidget> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          // BoxConstraints.tightForFinite(width: size.width, height: size.height),
          BoxConstraints.tightFor(
              width: widget.screenSize.width,
              height: widget.screenSize.height * 1.2),
      child: Container(
        // color: Colors.red,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 64, vertical: 50),
                  color: Colors.white10,
                  child: Text(
                    " Latest in the site - News, Articles, Products ",
                    style: Styles.majorSectionTextStyle_heading,
                  ),
                )
              ],
            ),
            Container(
              // color: Colors.amber,
              height: widget.screenSize.width * (9 / 20) - 106,
              width: widget.screenSize.width,
              margin: const EdgeInsets.only(left: 64, right: 120),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    // childAspectRatio: 20 / 9,
                    crossAxisCount: 2,
                    mainAxisExtent: widget.screenSize.width / 6,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: Colors.white24,
                    child: const Icon(
                      Icons.info_outlined,
                      color: Styles.blackBG,
                      size: 40,
                    ),
                  );
                },
              ),
            ),
            Container(
              // alignment: Alignment.centerLeft,
              // color: Colors.redAccent,
              // color: Colors.amber,
              height: widget.screenSize.width / 8,
              width: widget.screenSize.width,
              margin: const EdgeInsets.only(left: 64, right: 120),
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    // childAspectRatio: 20 / 3,
                    crossAxisCount: 2,
                    mainAxisExtent: widget.screenSize.width / 24,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 32.0),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.centerLeft,
                    // color: Colors.white24,
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: ClassDict.latestLinksDict[
                              ClassDict.latestLinksDict.keys.elementAt(index)],
                          icon: Icon(
                            ClassDict.latestLinksDict.keys.elementAt(index),
                            color: Colors.white24,
                            size: 40,
                          ),
                        ),
                        Text("\t\t\t\tNo notifications",
                            style: GoogleFonts.shareTech(
                                textStyle: Styles.sectionInnerTextStyle))
                      ],
                    ),
                  );
                },
              ),
            ),
            // const Text(
            //   "data",
            //   style: TextStyle(fontSize: 100),
            // ),
          ],
        ),
      ),
    );
  }
}
