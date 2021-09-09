import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data/data.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.brown[400],
      body: SafeArea(
        child: Stack(
          children: [
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
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (var i = 0; i < kContactTitle.length; i++)
                  Column(
                    children: [
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            launch(kContactLinkTo[i]);
                          },
                          child: Container(
                            width: w * .6,
                            height: h * .17,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: kContactContainerColor[i],
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  left: -w * .05,
                                  bottom: -h * .05,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.transparent,
                                    ),
                                    width: w * .2,
                                    height: h * .2,
                                    child: Image.asset(
                                      kContactImage[i],
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    kContactTitle[i],
                                    style: TextStyle(
                                      fontSize: h * .05,
                                      color: kContactFontColor[i],
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: h * .02,
                      )
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
