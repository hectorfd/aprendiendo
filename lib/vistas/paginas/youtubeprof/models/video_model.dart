import 'package:http/http.dart' as http;
import 'dart:convert';

class VideoModel {
  String kind;
  String etag;
  Id id;
  Snippet snippet;
  String duration;
  String viewCount;
  String channelAvatarUrl;

  VideoModel({
    required this.kind,
    required this.etag,
    required this.id,
    required this.snippet,
    required this.duration,
    required this.viewCount,
    required this.channelAvatarUrl,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json, String avatarUrl) {
    return VideoModel(
      kind: json["kind"],
      etag: json["etag"],
      id: Id.fromJson(json["id"]),
      snippet: Snippet.fromJson(json["snippet"]),
      duration: json['contentDetails'] != null
          ? json['contentDetails']['duration'] ?? '00:00'
          : '00:00',
      viewCount: json['statistics'] != null
          ? json['statistics']['viewCount'].toString() ?? '0'
          : '0',
      channelAvatarUrl: avatarUrl,
    );
  }

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "etag": etag,
        "id": id.toJson(),
        "snippet": snippet.toJson(),
        "duration": duration,
        "viewCount": viewCount,
        "channelAvatarUrl": channelAvatarUrl,
      };
}

class Id {
  String kind;
  String? videoId;

  Id({
    required this.kind,
    required this.videoId,
  });

  factory Id.fromJson(Map<String, dynamic> json) => Id(
        kind: json["kind"],
        videoId: json["videoId"],
      );

  Map<String, dynamic> toJson() => {
        "kind": kind,
        "videoId": videoId,
      };
}

class Snippet {
  DateTime publishedAt;
  String channelId;
  String title;
  String description;
  Thumbnails thumbnails;
  String channelTitle;
  String liveBroadcastContent;
  DateTime publishTime;

  Snippet({
    required this.publishedAt,
    required this.channelId,
    required this.title,
    required this.description,
    required this.thumbnails,
    required this.channelTitle,
    required this.liveBroadcastContent,
    required this.publishTime,
  });

  factory Snippet.fromJson(Map<String, dynamic> json) => Snippet(
        publishedAt: DateTime.parse(json["publishedAt"]),
        channelId: json["channelId"],
        title: json["title"],
        description: json["description"],
        thumbnails: Thumbnails.fromJson(json["thumbnails"]),
        channelTitle: json["channelTitle"],
        liveBroadcastContent: json["liveBroadcastContent"],
        publishTime: DateTime.parse(json["publishTime"]),
      );

  Map<String, dynamic> toJson() => {
        "publishedAt": publishedAt.toIso8601String(),
        "channelId": channelId,
        "title": title,
        "description": description,
        "thumbnails": thumbnails.toJson(),
        "channelTitle": channelTitle,
        "liveBroadcastContent": liveBroadcastContent,
        "publishTime": publishTime.toIso8601String(),
      };
}

class Thumbnails {
  Default thumbnailsDefault;
  Default medium;
  Default high;

  Thumbnails({
    required this.thumbnailsDefault,
    required this.medium,
    required this.high,
  });

  factory Thumbnails.fromJson(Map<String, dynamic> json) => Thumbnails(
        thumbnailsDefault: Default.fromJson(json["default"]),
        medium: Default.fromJson(json["medium"]),
        high: Default.fromJson(json["high"]),
      );

  Map<String, dynamic> toJson() => {
        "default": thumbnailsDefault.toJson(),
        "medium": medium.toJson(),
        "high": high.toJson(),
      };
}

class Default {
  String url;
  int width;
  int height;

  Default({
    required this.url,
    required this.width,
    required this.height,
  });

  factory Default.fromJson(Map<String, dynamic> json) => Default(
        url: json["url"],
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "width": width,
        "height": height,
      };
}

Future<VideoModel> fetchVideoDetails(String videoId) async {
  final response = await http.get(
    Uri.parse(
        'https://www.googleapis.com/youtube/v3/videos?part=snippet,contentDetails,statistics&id=$videoId&key=AIzaSyAaOa7DgE461eKAN5okwXdL6L94ILWgSvg'),
  );

  if (response.statusCode == 200) {
    final jsonData = json.decode(response.body);
    String channelId = jsonData['items'][0]['snippet']['channelId'];
    String avatarUrl = await fetchChannelAvatar(channelId); 

    return VideoModel(
      kind: jsonData['items'][0]['kind'],
      etag: jsonData['items'][0]['etag'],
      id: Id.fromJson(jsonData['items'][0]['id']),
      snippet: Snippet.fromJson(jsonData['items'][0]['snippet']),
      duration: jsonData['items'][0]['contentDetails']['duration'] ?? '00:00',
      viewCount: jsonData['items'][0]['statistics']['viewCount']?.toString() ?? '0',
      channelAvatarUrl: avatarUrl, 
    );
  } else {
    throw Exception('Error al cargar los detalles del video');
  }
}

Future<String> fetchChannelAvatar(String channelId) async {
  try {
    final response = await http.get(
      Uri.parse(
          'https://www.googleapis.com/youtube/v3/channels?part=snippet&id=$channelId&key=AIzaSyAaOa7DgE461eKAN5okwXdL6L94ILWgSvg'),
    );

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      if (jsonData['items'].isNotEmpty) {
        return jsonData['items'][0]['snippet']['thumbnails']['default']['url'];
      } else {
        return 'https://images.pexels.com/photos/157920/woman-face-curly-hair-157920.jpeg'; 
      }
    } else {
      return 'https://images.pexels.com/photos/157920/woman-face-curly-hair-157920.jpeg'; 
    }
  } catch (e) {
    return 'https://images.pexels.com/photos/157920/woman-face-curly-hair-157920.jpeg'; 
  }
}


