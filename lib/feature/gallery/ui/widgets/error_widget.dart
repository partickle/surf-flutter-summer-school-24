import 'package:flutter/material.dart';
import 'package:surf_flutter_summer_school_24/res/fonts/font_constants.dart';

class CustomErrorWidget extends StatelessWidget {
  final VoidCallback onRetryPressed;
  const CustomErrorWidget({super.key, required this.onRetryPressed});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/sleepy_face_emodji.png',
            height: 70,
            width: 70,
          ),
          Text(
            'Упс!',
            style: errorTitleTextStyle
          ),
          const SizedBox(height: 7),
          Text(
            "Произошла ошибка.\nПопробуйте позже.",
            style: errorSubtitleTextStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            onPressed: onRetryPressed,
            child: const Text(
              "ПОПРОБОВАТЬ СНОВА",
            ),
          )
        ],
      ),
    );
  }
}
