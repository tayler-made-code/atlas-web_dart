import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  final url = 'https://rickandmortyapi.com/api/character';

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final count = data['info']['count'];

      final characterIds = List.generate(count, (index) => index + 1);
      final characterIdsString = characterIds.join(',');

      final updatedUrl = 'https://rickandmortyapi.com/api/character/$characterIdsString';
      //test the url
      // print('$updatedUrl');
      final updatedResponse = await http.get(Uri.parse(updatedUrl));

      if (updatedResponse.statusCode == 200) {
        final updatedData = json.decode(updatedResponse.body);

        for (var character in updatedData) {
          print(character['name']);
        }
      }
    }
  } catch (error) {
    print('error caught: $error');
  }
}