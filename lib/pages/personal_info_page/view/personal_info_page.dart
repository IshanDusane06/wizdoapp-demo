import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wizdoapp/pages/personal_info_page/widgets/grid_view_tiles.dart';

class PersonalInfoPage extends StatelessWidget {
  static const String id = 'personal-info-page';

  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xFF7D50FF), // Change to your desired color
        statusBarIconBrightness:
            Brightness.light, // White icons for dark background
      ),
    );

    return Scaffold(
      body: WillPopScope(
        onWillPop: () {
          SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
          return Future.value(true);
        },
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: const Color(0xFF7D50FF),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/wormies_jae.png'),
                        ],
                      ),
                      const Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.settings,
                              color: Color(0xFF333333),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  color: Theme.of(context).primaryColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Nayan R.',
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 20),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Joined Sep 2023',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: const Color(0xFFC9C4D0),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color:
                                    const Color(0xFF7D50FF).withOpacity(0.25),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  '1 STEP LEFT TO CLAIM ACHIEVEMENT',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Color(0xFF7D50FF)),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  'Finalize your account',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                                Spacer(),
                                Text(
                                  '2/3',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color: Color(0xFFF5A803)),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Divider(
                              thickness: 2,
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  'Create an account',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF404040)),
                                ),
                                Spacer(),
                                CircleAvatar(
                                  backgroundColor: Color(0xFFF5A803),
                                  radius: 9,
                                  child: Icon(
                                    Icons.done,
                                    size: 10,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: const [
                                SizedBox(
                                  width: 12,
                                ),
                                Text(
                                  'Create an account',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF404040)),
                                ),
                                Spacer(),
                                CircleAvatar(
                                  backgroundColor: Color(0xFFF5A803),
                                  radius: 9,
                                  child: Icon(
                                    Icons.done,
                                    size: 10,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 13,
                            ),
                            Row(
                              children: [
                                const SizedBox(
                                  width: 12,
                                ),
                                const Text(
                                  'Confirm you email',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xFF404040)),
                                ),
                                const Spacer(),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF7D50FF)),
                                  child: const Text('Confirm'),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 26,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Text(
                        'Statistics',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 200,
                        // width: double.infinity,
                        child: GridView(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10,
                                  childAspectRatio: 2),
                          children: const [
                            GridViewTiles(
                              iconPath: 'assets/images/fire.svg',
                              text: 'Days streak',
                              countText: '13',
                            ),
                            GridViewTiles(
                              iconPath: 'assets/images/lighting.svg',
                              text: 'Total XP',
                              countText: '250',
                            ),
                            GridViewTiles(
                              iconPath: 'assets/images/fire.svg',
                              text: 'Mins Completed',
                              countText: '250',
                            ),
                            GridViewTiles(
                              iconPath: 'assets/images/books.svg',
                              text: 'Summaries',
                              countText: '31',
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
