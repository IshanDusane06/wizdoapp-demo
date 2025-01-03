import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wizdoapp/pages/home_page/controller/home_page_controller.dart';
import 'package:wizdoapp/pages/home_page/widgets/app_bar_actions.dart';
import 'package:wizdoapp/pages/home_page/widgets/interested_categories_tile.dart';
import 'package:wizdoapp/pages/home_page/widgets/learn_stories.dart';
import 'package:wizdoapp/pages/home_page/widgets/personalised_books_tile.dart';

class MyHomePage extends ConsumerStatefulWidget {
  static const String id = '/home-page';

  const MyHomePage({super.key});

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(interestedBooksController.notifier).getData();
      ref.read(personalisedBooksController.notifier).getData();
      ref.read(learnStoriesBooksController.notifier).getData();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Color(0xFFFFF8F5),
    // ));

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          toolbarHeight: 60,
          title: const AppBarActions()),
      body: Container(
        height: double.infinity,
        color: Theme.of(context).primaryColor,
        padding: const EdgeInsets.only(top: 11, left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Categories you’re interested in',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: Consumer(
                builder: (context, ref, child) {
                  final interestedCategories =
                      ref.watch(interestedBooksController);
                  return ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    shrinkWrap: true,
                    itemCount: interestedCategories?.length ?? 0,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InterestedCategoriesTile(
                        icon_path: interestedCategories?[index].icon_path ?? '',
                        icon_text: interestedCategories?[index].text ?? '',
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            const Text(
              'Personalised Books',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'As per your preference',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF393938),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 270,
              child: Consumer(
                builder: (context, ref, child) {
                  final personalisedBooks =
                      ref.watch(personalisedBooksController);
                  return ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    shrinkWrap: true,
                    itemCount: personalisedBooks?.length ?? 0,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return PersonalisedBookTile(
                        icon_path: personalisedBooks?[index].icon_path ?? '',
                        icon_text: personalisedBooks?[index].text ?? '',
                        mini_icon:
                            personalisedBooks?[index].mini_icon_path ?? '',
                      );
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            const Text(
              'Learn through Stories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 12,
            ),
            SizedBox(
              height: 100,
              child: Consumer(
                builder: (context, ref, child) {
                  final learnStories = ref.watch(learnStoriesBooksController);
                  return ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                    shrinkWrap: true,
                    itemCount: learnStories?.length ?? 0,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return LearnStoriesTile(
                        icon_path: learnStories?[index].icon_path ?? '',
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
