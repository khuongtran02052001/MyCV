import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data/data.dart';

class ChildContainer extends StatelessWidget {
  final int index;
  ChildContainer({this.index});
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: h,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(kProjectImage[index]),
            ),
          ),
          index % 2 == 0
              ? Positioned(
                  bottom: 0,
                  right: 0,
                  child: TitleContainer(
                    w: w,
                    h: h,
                    index: index,
                    isLeft: false,
                  ))
              : Positioned(
                  bottom: 0,
                  left: 0,
                  child: TitleContainer(
                    w: w,
                    h: h,
                    index: index,
                    isLeft: true,
                  ))
        ],
      ),
    );
  }
}

class TitleContainer extends StatelessWidget {
  const TitleContainer(
      {Key key,
      @required this.w,
      @required this.h,
      @required this.index,
      @required this.isLeft})
      : super(key: key);

  final double w;
  final double h;
  final int index;
  final bool isLeft;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.orange[300],
          borderRadius: isLeft
              ? BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  topRight: Radius.circular(30))
              : BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topLeft: Radius.circular(30))),
      width: w * .5,
      height: h * .1,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              kProjectTitle[index],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: w * .02),
            ),
          ],
        ),
      ),
    );
  }
}
