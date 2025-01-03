import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:wizdoapp/pages/home_page/view/home_page.dart';
import 'package:wizdoapp/pages/home_page/widgets/app_bar_actions_item.dart';
import 'package:wizdoapp/pages/personal_info_page/view/personal_info_page.dart';

class AppBarActions extends StatelessWidget {
  const AppBarActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AppBarActionItems(
          icon_path: 'assets/images/books.svg',
          icon_text: '13',
          icon_text_color: const Color(0xFF00ADFF),
          onTap: () => context.go('${MyHomePage.id}/${PersonalInfoPage.id}'),
        ),
        const AppBarActionItems(
          icon_path: 'assets/images/fire.svg',
          icon_text: '2',
          icon_text_color: Color(0xFFFF9600),
        ),
        const AppBarActionItems(
          icon_path: 'assets/images/lighting.svg',
          icon_text: '711',
          icon_text_color: Color(0xFFFFC800),
        ),
        AppBarActionItems(
          icon_path: 'assets/images/gift.svg',
          onTap: () {
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                // title: Text('Dialog Title'),
                content: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/dialog_image.png'),
                      SizedBox(
                        height: 22,
                      ),
                      Text(
                        'Here is a special gift  just for you!',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity, 50),
                            backgroundColor: const Color(0xFF7D50FF)),
                        child: const Text('Confirm'),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
