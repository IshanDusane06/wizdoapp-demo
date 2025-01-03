import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PersonalisedBookTile extends StatelessWidget {
  const PersonalisedBookTile({
    required this.icon_path,
    required this.icon_text,
    required this.mini_icon,
    super.key,
  });

  final String icon_path;
  final String icon_text;
  final String mini_icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 240,
          decoration: BoxDecoration(
            color: const Color(0xFFFFFFFF),
            border: Border.all(
              color: const Color(
                0xFFC5C5C5,
              ),
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            icon_path,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(mini_icon),
            const SizedBox(
              width: 4,
            ),
            Text(
              icon_text,
              style: const TextStyle(color: Color(0xFF333333), fontSize: 14),
            )
          ],
        )
      ],
    );
  }
}
