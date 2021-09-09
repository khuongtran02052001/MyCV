import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data/data.dart';
import 'package:flutter_portfolio/src/contactpage.dart';
import 'package:flutter_portfolio/src/projectpage.dart';
import 'package:flutter_portfolio/src/skillpage.dart';
import 'package:flutter_portfolio/widget/clippathHome.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double page = 0;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.centerLeft,
                colors: [
                  Colors.white,
                  Colors.grey[400],
                ],
              )),
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    top: h * .1,
                    bottom: 0,
                    child: ClipPath(
                      clipper: ClipPathHomeRight(),
                      child: Container(
                        width: w * .9,
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
                        child: Padding(
                          padding: EdgeInsets.only(left: w * .4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Center(
                                  child: Text(
                                    'Introduce',
                                    style: TextStyle(
                                        fontSize: h * .065,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                              ),
                              Container(
                                width: w * .3,
                                child: Text(
                                  kIntroduce,
                                  style: TextStyle(
                                      fontSize: h * .025,
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 1.5),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    bottom: h * .1,
                    child: ClipPath(
                      clipper: ClipPathHomeLeft(),
                      child: Container(
                        width: w * .9,
                        height: h,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.topLeft,
                          colors: [
                            Colors.orange[100],
                            Colors.orange[200],
                          ],
                        )),
                        child: Stack(
                          children: [
                            Positioned(
                              right: w * .1,
                              bottom: -h * .1,
                              child: Image.asset(
                                'assets/avatar.png',
                                width: w,
                                height: h,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(h * .02),
                                  child: Text(
                                    'Trần Duy Khương',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: h * .1,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: w * .02),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      for (var i = 0;
                                          i < kProgramLanguage.length;
                                          i++)
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              size: 25,
                                              color: Colors.indigo,
                                            ),
                                            SizedBox(
                                              width: w * .02,
                                            ),
                                            Text(
                                              '${kProgramLanguage[i]}',
                                              style: TextStyle(
                                                  fontSize: h * .03,
                                                  color: Colors.black45,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                    ],
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      for (var i = 0;
                                          i < kcontactMainIcon.length;
                                          i++)
                                        Row(
                                          children: [
                                            IconButton(
                                              icon: Icon(
                                                kcontactMainIcon[i],
                                                size: h * .05,
                                                color: Colors.black54,
                                              ),
                                              onPressed: () {
                                                launch(kcontactMainLinkTo[i]);
                                              },
                                            ),
                                            SizedBox(
                                              width: w * .01,
                                            )
                                          ],
                                        ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Positioned(
            //   top: h * .03,
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
            //       onPressed: () {
            //         Navigator.push(context,
            //             MaterialPageRoute(builder: (context) => SkillPage()));
            //       },
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.end,
            //         children: [
            //           Text(
            //             'Go to Skills',
            //             style: TextStyle(
            //                 color: Colors.black87, fontSize: h * .045),
            //           ),
            //           SizedBox(
            //             width: w * .01,
            //           ),
            //           Icon(
            //             Icons.arrow_forward_ios_rounded,
            //             size: h * .04,
            //             color: Colors.black54,
            //           )
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            Positioned(
              bottom: h * .03,
              left: w * .01,
              child: Row(
                children: [
                  Container(
                    width: w * .1,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.orange[200],
                          Colors.orange[300],
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: FlatButton(
                      hoverColor: Colors.transparent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SkillPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Skills',
                            style: TextStyle(
                                color: Colors.black87, fontSize: w * .015),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: w * .01,
                  ),
                  Container(
                    width: w * .1,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.orange[200],
                          Colors.orange[300],
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: FlatButton(
                      hoverColor: Colors.transparent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProjectPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Project',
                            style: TextStyle(
                                color: Colors.black87, fontSize: w * .015),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: w * .01,
                  ),
                  Container(
                    width: w * .1,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.orange[200],
                          Colors.orange[300],
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: FlatButton(
                      hoverColor: Colors.transparent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContactPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Contact',
                            style: TextStyle(
                                color: Colors.black87, fontSize: w * .015),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget selectPage(int i) {
  //   if (i == 0) return
  // }
}
