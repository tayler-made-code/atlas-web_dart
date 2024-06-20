import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    final url = 'https://rickandmortyapi.com/api/character';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final count = data['info']['count'];
      print('count: $count');
      print('info: ${data['info']}');

      final characterIds = List.generate(count, (index) => index + 1);
      final characterIdsString = characterIds.join(',');

      final fullUrl = 'https://rickandmortyapi.com/api/character/$characterIdsString';
      // test the url
      // print('$fullUrl');
      final fullResponse = await http.get(Uri.parse(fullUrl));

      if (fullResponse.statusCode == 200) {
        final updatedData = json.decode(fullResponse.body);

        for (var character in updatedData) {
          print(character['name']);
        }
      }
    }
  } catch (error) {
    print('error caught: $error');
  }
}