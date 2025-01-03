import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class AppBarActionItems extends StatelessWidget {
  const AppBarActionItems({
    required this.icon_path,
    this.icon_text,
    this.icon_text_color,
    this.onTap,
    super.key,
  });

  final String icon_path;
  final String? icon_text;
  final Color? icon_text_color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          SvgPicture.asset(icon_path),
          const SizedBox(
            width: 6,
          ),
          Text(
            icon_text ?? '',
            style: TextStyle(color: icon_text_color),
          ),
        ],
      ),
    );
  }
}
