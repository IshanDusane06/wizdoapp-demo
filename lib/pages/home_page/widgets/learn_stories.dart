import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LearnStoriesTile extends StatelessWidget {
  const LearnStoriesTile({
    required this.icon_path,
    super.key,
  });

  final String icon_path;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      decoration: BoxDecoration(
        color: const Color(0xFFFFFFFF),
        border: Border.all(
            color: const Color(
              0xFF7D50FF,
            ),
            width: 3),
        borderRadius: BorderRadius.circular(14.52),
      ),
      child: Image.asset(
        icon_path,
        fit: BoxFit.fill,
      ),
    );
  }
}
