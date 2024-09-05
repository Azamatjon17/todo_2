import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

List<Widget> onBodringPages = [
  CustomOnBording(
    imageIndex: '1',
    title: 'Manage your tasks',
    text: 'You can easily manage all of your daily tasks in DoMe for free',
  ),
  CustomOnBording(
    imageIndex: '2',
    title: 'Create daily routine',
    text:
        'In Uptodo  you can create your personalized routine to stay productive',
  ),
  CustomOnBording(
    imageIndex: '3',
    title: 'Organize your tasks',
    text:
        'You can organize your daily tasks by adding your tasks into separate categories',
  ),
];

// ignore: must_be_immutable
class CustomOnBording extends StatelessWidget {
  String imageIndex;
  String title;
  String text;
  CustomOnBording({
    super.key,
    required this.imageIndex,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          'assets/onbording/on_bording$imageIndex.svg',
          height: 277.h,
          width: 213.w,
        ),
        Gap(25.h),
        Text(
          title,
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        Gap(25.h),
        Text(
          text,
          style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
