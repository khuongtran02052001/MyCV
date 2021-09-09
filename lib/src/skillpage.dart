import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data/data.dart';
import 'package:flutter_portfolio/widget/clippathSkills.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';

class SkillPage extends StatefulWidget {
  @override
  _SkillPageState createState() => _SkillPageState();
}

class _SkillPageState extends State<SkillPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: w * .4,
              right: -w * .2,
              child: ClipPath(
                clipper: ClipPathSkills(),
                child: Container(
                  width: double.infinity,
                  height: h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.brown[400].withOpacity(.7),
                        Colors.brown[600].withOpacity(.9),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(h * .1),
              child: ClipPath(
                clipper: ClipPathSkills(),
                child: Container(
                  width: double.infinity,
                  height: h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.orange[100],
                        Colors.orange[200],
                      ],
                    ),
                  ),
                  child: Stack(
                    children: [
                      // ClipPath(
                      //   clipper: ClipPathBG(),
                      //   child: Container(
                      //     decoration: BoxDecoration(
                      //       gradient: LinearGradient(
                      //         begin: Alignment.center,
                      //         end: Alignment.centerRight,
                      //         colors: [
                      //           Colors.brown[500].withOpacity(.5),
                      //           Colors.brown[700].withOpacity(.6),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          for (var i = 0; i < kSkillsTitle.length; i++)
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: kPaddingSkill(w, kPaddingValue[i])),
                                  child: Center(
                                      child: Text('${kSkillsTitle[i]}',
                                          style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w800,
                                              fontSize: h * .03))),
                                ),
                                SizedBox(
                                  width: w * .02,
                                ),
                                Container(
                                  width: w * .5,
                                  height: h * .05,
                                  decoration: BoxDecoration(boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 6,
                                        spreadRadius: 1,
                                        offset: Offset(h * .01, h * .015))
                                  ]),
                                  child: LiquidLinearProgressIndicator(
                                    value: kSkillPercent[i],
                                    center: Text(
                                      '${(kSkillPercent[i] * 100).toString()}%',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: w * .02),
                                    ),
                                    valueColor: AlwaysStoppedAnimation(
                                        Colors.brown[300]),
                                    backgroundColor: Colors.white,
                                    borderColor: Colors.brown[700],
                                    borderWidth: 5.0,
                                    borderRadius: 12.0,
                                    direction: Axis
                                        .horizontal, // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.horizontal.
                                  ),
                                )
                              ],
                            )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: h * .02,
              left: w * .05,
              child: Container(
                width: w * .3,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.brown[100],
                      Colors.orange[200],
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FlatButton(
                  hoverColor: Colors.transparent,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 25,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: w * .01,
                      ),
                      Text(
                        'Back to Home',
                        style:
                            TextStyle(color: Colors.black87, fontSize: w * .02),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Positioned(
            //   bottom: h * .02,
            //   right: w * .05,
            //   child: Container(
            //     width: w * .3,
            //     decoration: BoxDecoration(
            //       gradient: LinearGradient(
            //         begin: Alignment.center,
            //         end: Alignment.bottomRight,
            //         colors: [
            //           Colors.orange[200],
            //           Colors.brown[100],
            //         ],
            //       ),
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child: FlatButton(
            //       hoverColor: Colors.transparent,
            //       onPressed: () {},
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //         children: [
            //           Text(
            //             'Go to Project',
            //             style: TextStyle(color: Colors.black87, fontSize: 30),
            //           ),
            //           SizedBox(
            //             width: w * .01,
            //           ),
            //           Icon(
            //             Icons.arrow_forward_ios_rounded,
            //             size: 25,
            //             color: Colors.black54,
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
