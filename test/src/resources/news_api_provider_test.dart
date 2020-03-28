import 'package:news/src/resources/news_api_provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:http/testing.dart';

void main() {
  test(' \n ---------> Fetch_IDS <-----------', () async {
    final newsApi = NewsAPIProvider();

    newsApi.client = MockClient((request) async {
      return Response(json.encode([1, 2, 3, 4]), 200);
    });

    final ids = await newsApi.fetchTopItem();

    expect(ids, [1, 2, 3, 4]);
  });

  test('Item Fetch Testing', () async {
    final newsApi = NewsAPIProvider();
    newsApi.client = MockClient((request) async {
      return Response(json.encode({'id': 123}), 200);
    });

    final item = await newsApi.fetchItem(12345);

    expect(item.id, 123);
  });
}
