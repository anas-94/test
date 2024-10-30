import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_7/constants/app_colors.dart';

class VideoCallWidget extends StatelessWidget {
  const VideoCallWidget({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(21.65), boxShadow: [
        BoxShadow(
            spreadRadius: -10,
            blurRadius: 25,
            offset: const Offset(0, 4.5),
            color: AppColors.praimeryButtonColor.withOpacity(.25))
      ]),
      height: 80,
      width: 80,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: const BoxDecoration(boxShadow: []),
            height: 65,
            width: 65,
            child: CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 65,
            height: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21.65),
                border: Border.all(
                  width: 4.5,
                  color: AppColors.praimeryButtonColor,
                  strokeAlign: BorderSide.strokeAlignCenter,
                )),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21.65),
                  border: Border.all(
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Colors.white,
                      width: 2.7)),
            ),
          ),
          Positioned(
              top: 55,
              left: 55,
              child: Container(
                  height: 21,
                  width: 21,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 3.7, vertical: 3.6),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1.8, color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xff4DC9D1)),
                  child: SvgPicture.asset(
                    'assets/svgs/video_icon.svg',
                  )))
        ],
      ),
    );
  }
}
