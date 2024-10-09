import 'package:aprendiendo/vistas/paginas/youtubeprof/models/video_model.dart';
import 'package:http/http.dart' as http;
import 'package:aprendiendo/vistas/paginas/youtubeprof/utils/constants.dart';
import 'dart:convert';

class APIService {
  Future<List<VideoModel>> getVideos() async {
    List<VideoModel> videosModel = [];
    String path =
        "https://youtube.googleapis.com/youtube/v3/search?part=snippet&key=AIzaSyAaOa7DgE461eKAN5okwXdL6L94ILWgSvg&maxResults=20&regionCode=PE";
    Uri uri = Uri.parse(path);
    http.Response response = await http.get(uri);

    if (response.statusCode == 200) {
      Map<String, dynamic> myMap = json.decode(response.body);
      List videos = myMap["items"];
      videosModel = videos.map((e) => VideoModel.fromJson(e)).toList();
      print(videosModel);
      print(response.statusCode);
      return videosModel;
    }
    return videosModel;
  }
}