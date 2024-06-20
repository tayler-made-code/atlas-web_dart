import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  final url = 'https://rickandmortyapi.com/api/character';

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final results = data['results'];

      for (var character in results) {
        print(character['name']);
      }

      // while (data['info']['next'] != null) {
      //   final nextUrl = data['info']['next'];
      //   final nextResponse = await http.get(Uri.parse(nextUrl));

      //   if (nextResponse.statusCode == 200) {
      //     final nextData = json.decode(nextResponse.body);
      //     final nextResults = nextData['results'];

      //     for (var character in nextResults) {
      //       print(character['name']);
      //     }

      //     data['info']['next'] = nextData['info']['next'];
      //   }
      // }
    }
  } catch (error) {
    print('error caught: $error');
  }
}