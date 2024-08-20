import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileCardInfoWidget extends StatelessWidget {
  final String? title;
  final String? vectorImage;
  final Function? onTabCard;
  final int? index;
  final bool? isEnabled;

  ProfileCardInfoWidget(
      {this.title,
      this.vectorImage,
      this.onTabCard,
      this.index,
      this.isEnabled,
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTabCard?.call(index);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 1.5,
        height: MediaQuery.of(context).size.height * 0.9,
        child: Column(
          crossAxisAlignment: index! % 2 == 1 ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: isEnabled == true
                          ? const Color(0xff40ffccd9)
                          : Color(0xffd5d5d5),
                      width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                color: isEnabled==true? Color(0xffffffff) : Color(0xffd5d5d5),
                shadowColor: Color(0xff40ffccd9),
                elevation: 6,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.19,
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: SvgPicture.asset(vectorImage??""),
                  margin: EdgeInsets.all(35),
                )),
            Container(
              width: MediaQuery.of(context).size.width * 0.4,
              margin: EdgeInsets.fromLTRB(0, 15,0, 15),
              child: Center(
                child: Text(
                     title??"",
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    softWrap: true),
              ),
            ),
          ],
        ),
      ),
    );
  }


}
