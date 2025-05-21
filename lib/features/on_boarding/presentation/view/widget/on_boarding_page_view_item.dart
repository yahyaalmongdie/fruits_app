import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_app/constants.dart';
import 'package:fruits_app/core/services/shared_preferences_singlton.dart';
import 'package:fruits_app/core/utils/app_text_styles.dart';
import 'package:fruits_app/features/auth/presentation/view/pages/signin_view.dart';
import 'package:fruits_app/generated/l10n.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  const OnBoardingPageViewItem(
      {super.key,
      required this.title,
      required this.body,
      required this.image,
      required this.backGroundImage,
      required this.showSkipWidget});

  final String body;
  final String image, backGroundImage;
  final Widget title;
  final bool showSkipWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
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
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  image,
                ),
              ),
              Visibility(
                visible: showSkipWidget,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    onTap: () {
                      Prefs.setBool(kIsOnBoardingViewSeen, true);
                      Navigator.of(context)
                          .pushReplacementNamed(LoginView.routeName);
                    },
                    child: Text(
                      S.of(context).skip,
                      style: AppTextStyles.semiBold13(context: context)
                          .copyWith(color: const Color(0xff4e5456)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 64,
        ),
        title,
        const SizedBox(
          height: 24,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: (37.0)),
          child: Text(
            body,
            style: AppTextStyles.regular13(context: context)
                .copyWith(color: const Color(0xff949D9e)),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
