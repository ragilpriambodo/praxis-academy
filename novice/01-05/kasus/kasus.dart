import 'dart:async';
import 'dart:io';
import 'dart:convert';

Future<void> cetakKasus() async {
  var request = await HttpClient()
      .getUrl(Uri.parse('https://dart.dev/web'));
  var response = await request.close();
  await for (var contents in response.transform(Utf8Decoder())) {
    print(contents);
    File('kasus.txt').writeAsString(contents);
  }
}
void main() {
  cetakKasus();
}