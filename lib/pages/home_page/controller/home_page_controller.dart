import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wizdoapp/const/data_type.dart';
import 'package:wizdoapp/data/data.dart';
import 'package:wizdoapp/pages/home_page/model/data.model.dart';

final interestedBooksController =
    StateNotifierProvider<InterestedBooksController, List<DataModel>?>((ref) {
  return InterestedBooksController(
    providerRef: ref,
  );
});
final personalisedBooksController =
    StateNotifierProvider<PersonalisedBooksController, List<DataModel>?>((ref) {
  return PersonalisedBooksController(
    providerRef: ref,
  );
});
final learnStoriesBooksController =
    StateNotifierProvider<LearnStoriesBooksController, List<DataModel>?>((ref) {
  return LearnStoriesBooksController(
    providerRef: ref,
  );
});

class InterestedBooksController extends StateNotifier<List<DataModel>?> {
  InterestedBooksController({
    required this.providerRef,
  }) : super(null);

  final StateNotifierProviderRef providerRef;

  getData() async {
    state = Data.categoriesData;
  }
}

class PersonalisedBooksController extends StateNotifier<List<DataModel>?> {
  PersonalisedBooksController({
    required this.providerRef,
  }) : super(null);

  final StateNotifierProviderRef providerRef;

  getData() async {
    state = Data.personalisedBookData;
  }
}

class LearnStoriesBooksController extends StateNotifier<List<DataModel>?> {
  LearnStoriesBooksController({
    required this.providerRef,
  }) : super(null);

  final StateNotifierProviderRef providerRef;

  getData() async {
    state = Data.learnStoriesData;
  }
}
