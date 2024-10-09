import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  const OnBoardingPageViewItem(
      {super.key,
      required this.title,
      required this.body,
      required this.image,
      required this.backGroundImage});

  final String body;
  final String image, backGroundImage;
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Stack(
              children: [
                Positioned.fill(
                    child: SvgPicture.asset(
                  backGroundImage,
                  fit: BoxFit.fill,
                )),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                    child: SvgPicture.asset(

                  image,
              
                )),
              ],
            ))
      ],
    );
  }
}
