import 'package:http/http.dart' as http;

class ApiService {
  static Future<String> uploadImage(String path) async {
    var request = http.MultipartRequest(
      'POST',
      Uri.parse("https://your-app.onrender.com/full-pipeline"),
    );

    request.files.add(await http.MultipartFile.fromPath('image', path));

    var res = await request.send();
    var body = await res.stream.bytesToString();

    return body;
  }
}