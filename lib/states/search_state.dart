import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final AutoDisposeChangeNotifierProvider<SearchState> searchProvider =
    ChangeNotifierProvider.autoDispose(
        (AutoDisposeChangeNotifierProviderRef<SearchState> ref) {
  return SearchState();
});

class SearchState extends ChangeNotifier {
  SearchState();

  bool show = false;
  String? query;

  void toggle() {
    show = !show;
    notifyListeners();
  }

  void updateQuery(String? query) {
    this.query = query;
    notifyListeners();
  }
}
