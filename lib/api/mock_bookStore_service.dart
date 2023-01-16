import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/models.dart';

class MockBooksService {
  Future<ExploreData> getExploreData() async {
    final feedInformations = await _getFeedInformations();

    return ExploreData(feedInformations);
  }

  Future<List<BookInfo>> getBookInformations() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final dataString =
    await _loadAsset('assets/data_samples/bookInfo.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['bookInfo'] != null) {
      final bookInfo = <BookInfo>[];
      json['bookInfo'].forEach((v) {
        bookInfo.add(BookInfo.fromJson(v));
      });
      return bookInfo;
    } else {
      return [];
    }
  }

  Future<List<Feed>> _getFeedInformations() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final dataString =
    await _loadAsset('assets/data_samples/feed.json');
    final Map<String, dynamic> json = jsonDecode(dataString);

    if (json['feed'] != null) {
      final feed = <Feed>[];
      json['feed'].forEach((v) {
        feed.add(Feed.fromJson(v));
      });
      return feed;
    } else {
      return [];
    }
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
