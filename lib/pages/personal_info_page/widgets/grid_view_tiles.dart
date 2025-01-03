import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GridViewTiles extends StatelessWidget {
  const GridViewTiles({
    required this.iconPath,
    required this.text,
    required this.countText,
    super.key,
  });

  final String iconPath;
  final String text;
  final String countText;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color(
              0xFFC9C4D0,
            ),
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(iconPath),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                countText,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text(
                text,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF79757F),
                ),
                overflow: TextOverflow.ellipsis,
              )
            ],
          )
        ],
      ),
    );
  }
}
