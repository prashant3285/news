import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/item_model.dart';

final _root = 'https://hacker-news.firebaseio.com/v0';

class NewsAPIProvider {
  Client client = Client();

  fetchTopItem() async {
    final response = await (client.get('$_root/updates.json'));
    final ids = json.decode(response.body);

    return ids;
  }

  fetchItem(int id) async {
    final response = await (client.get('$_root/item/$id.json'));
    final parsedJson = json.decode(response.body);

    return ItemModel.fromJson(parsedJson);
  }
}
