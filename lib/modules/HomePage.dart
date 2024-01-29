import 'package:flutter/material.dart';
import 'package:webapp/UI/latest_widget.dart';
import 'package:webapp/UI/mission_widget.dart';
import 'package:webapp/util/Constants.dart' show Styles;
import 'package:webapp/util/Constants.dart' show ClassDict;

import 'package:webapp/util/classes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _scrollController = ScrollController();
  String _scrollSection = "";

  @override
  void initState() {
    _scrollController.addListener(_updateScrollIndicator);
    super.initState();
  }

  void _updateScrollIndicator() {
    bool flag = false;
    ClassDict.scrollPointDict.forEach((key, value) {
      if (_scrollController.offset >= value.first &&
          _scrollController.offset <= value.last) {
        flag = true;
        setState(() {
          _scrollSection = key;
        });
      }
    });
    if (!flag) {
      setState(() {
        _scrollSection = "";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // print(Storage.scrollPointDict["Latest"]![1]);
    final Size screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Styles.blackBG,
        appBar: AppBar(
          primary: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 60,
          leading: Container(
            margin: EdgeInsets.only(top: 4, left: 2),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: IconButton(
                tooltip: "Search",
                onPressed: () {},
                icon: const Icon(
                  Icons.search_outlined,
                  color: Colors.white54,
                ),
                iconSize: 30.0,
                hoverColor: Colors.white24,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: Row(
                children: [
                  AppBarTextButton(
                      text: ClassDict.scrollPointDict.keys.elementAt(0),
                      scrollSection: _scrollSection),
                  AppBarTextButton(
                      text: ClassDict.scrollPointDict.keys.elementAt(1),
                      scrollSection: _scrollSection),
                  AppBarTextButton(
                      text: ClassDict.scrollPointDict.keys.elementAt(2),
                      scrollSection: _scrollSection)
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 2),
              child: IconButton(
                // padding: EdgeInsets.only(right: 2),
                tooltip: "Click to expand",
                onPressed: () {},
                iconSize: 30.0,
                icon: const Icon(
                  Icons.density_medium_rounded,
                  color: Colors.white54,
                ),
                hoverColor: Colors.white24,
              ),
            )
          ],
        ),
        body: SafeArea(
          top: true,
          // SingleChildScrollView(
          //   scrollDirection: Axis.vertical,
          // controller: _scrollController,
          // physics: ScrollPhysics(),
          // primary: true,

          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            primary: true,
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                  height: screenSize.height,
                  child: Row(
                    children: [
                      //Column 1 which is the left sidebar
                      Expanded(
                        flex: 4,
                        child: Container(
                          // margin: EdgeInsets.only(right: 12),
                          height: screenSize.height * .92,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              const Expanded(
                                flex: 3,
                                child: SizedBox(
                                    // height: 100,
                                    // height: screenSize.height - 100,
                                    ),
                              ),
                              IconButton(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  onPressed: () {},
                                  icon: const Icon(Icons.whatshot)),
                              IconButton(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  onPressed: () {},
                                  icon: const Icon(Icons.facebook_outlined)),
                              IconButton(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  onPressed: () {},
                                  icon: const Icon(Icons.quora_outlined)),
                              const Expanded(
                                child: SizedBox(
                                  height: 100,
                                  child: VerticalDivider(
                                    indent: 10,
                                    width: 40,
                                    endIndent: 10,
                                    thickness: 2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      //Column 2 where scrollBar resides

                      Expanded(
                        flex: 56,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: CustomScrollView(
                            // primary: true,
                            controller: _scrollController,
                            physics: const ScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            slivers: <Widget>[
                              SliverList(
                                delegate: SliverChildListDelegate([
                                  const Column(
                                    children: [
                                      Text(
                                        "data1",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 100),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(top: 132),
                                              child: Divider(
                                                indent: 64,
                                                height: 80,
                                                endIndent: 100,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                      Text(
                                        "data2",
                                        style: TextStyle(fontSize: 100),
                                      ),

                                      //divider
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Divider(
                                              indent: 64,
                                              height: 16,
                                              endIndent: 80,
                                            ),
                                          ),
                                        ],
                                      ),

                                      //row 3
                                      LatestWidget(
                                        screenSize: ClassDict.resolutionSize,
                                      )
                                    ],
                                  ),
                                ]),
                              )
                            ],
                          ),
                        ),
                      ),

                      //Dummy column 3
                      Container(
                        margin: const EdgeInsets.only(right: 4),
                        height: screenSize.height * .9,
                        // width: 6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Expanded(flex: 1, child: SizedBox()),
                            RotatedBox(
                              quarterTurns: 45,
                              child: Text(
                                "< SCROLL UP / DOWN >",
                                overflow: TextOverflow.fade,
                                softWrap: false,
                                style: TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.grey.withOpacity(0.6),
                                  letterSpacing: 4.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            const Expanded(
                              flex: 1,
                              child: VerticalDivider(
                                indent: 10,
                                width: 8,
                                endIndent: 10,
                              ),
                            ),
                            //const SizedBox(height: 100)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
