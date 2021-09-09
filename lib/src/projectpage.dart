import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data/data.dart';
import 'package:flutter_portfolio/src/widget/child_container.dart';

class ProjectPage extends StatefulWidget {
  @override
  _ProjectPageState createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.brown[400],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: w,
                height: h,
                child: ListView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding:
                          EdgeInsets.fromLTRB(w * .1, h * .07, w * .1, h * .05),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.orange[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: w * .5,
                        height: h * .87,
                        child: ChildContainer(index: index),
                      ),
                    );
                  },
                  itemCount: kProjectTitle.length,
                ),
              ),
              Positioned(
                top: h * .02,
                left: w * .05,
                child: Container(
                  width: w * .3,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.centerRight,
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
                          style: TextStyle(
                              color: Colors.black87, fontSize: w * .02),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
