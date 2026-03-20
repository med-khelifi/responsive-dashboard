
import 'package:dashboard/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ActiveCustomDrawerListItem extends StatelessWidget {
  const ActiveCustomDrawerListItem({
    super.key,
    required this.title,
    required this.image,
  });
  final String title, image;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(image),
      title: Text(title, style: AppStyles.styleBold16(context)),
      trailing: Container(width: 4, color: Color(0xFF4EB7F2)),
    );
  }
}
