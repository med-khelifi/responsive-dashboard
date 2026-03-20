import 'package:dashboard/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveCustomDrawerListItem extends StatelessWidget {
  const InActiveCustomDrawerListItem({
    super.key,
    required this.title,
    required this.image,
  });
  final String title, image;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image),
      title: Text(title, style: AppStyles.styleRegular16(context)),
    );
  }
}
