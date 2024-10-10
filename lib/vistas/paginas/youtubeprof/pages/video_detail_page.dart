import 'package:flutter/material.dart';
import 'package:aprendiendo/vistas/paginas/youtubeprof/models/video_model.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:http/http.dart' as http; 
import 'dart:convert'; 
class VideoDetailPage extends StatefulWidget {
  final VideoModel videoModel;

  const VideoDetailPage({Key? key, required this.videoModel}) : super(key: key);

  @override
  _VideoDetailPageState createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();

    _controller = YoutubePlayerController(
      initialVideoId: widget.videoModel.id.videoId!,
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Reproductor de YouTube
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                widget.videoModel.snippet.title,
                style: const TextStyle(fontSize: 16, color: Colors.white),
                textAlign: TextAlign.justify,
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Duración: ${widget.videoModel.duration}",
                    style: const TextStyle(fontSize: 14, color: Colors.white54),
                  ),
                  Text(
                    "Vistas: ${widget.videoModel.viewCount}",
                    style: const TextStyle(fontSize: 14, color: Colors.white54),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Principales"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[200],
                    ),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Más recientes",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Recuerda realizar comentarios respetuosos y seguir nuestros",
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Lineamientos de la Comunidad",
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
            ),
            const SizedBox(height: 10),
            FutureBuilder<List<String>>(
              future: widget.videoModel.id.videoId != null
                  ? fetchComments(widget.videoModel.id.videoId!)
                  : Future.value([]),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text(
                      "Error al cargar comentarios",
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return const Center(
                    child: Text(
                      "No hay comentarios",
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                }

                final comments = snapshot.data!;
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: comments.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            child: Text('A'),
                            backgroundColor: Colors.grey[800],
                            foregroundColor: Colors.white,
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '@usuario • hace 2 horas',
                                  style:
                                      const TextStyle(color: Colors.white54),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  comments[index],
                                  style:
                                      const TextStyle(color: Colors.white),
                                ),
                                const SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.thumb_up,
                                        color: Colors.white70),
                                    const SizedBox(width: 5),
                                    Text('10',
                                        style: const TextStyle(
                                            color: Colors.white70)),
                                    const SizedBox(width: 15),
                                    Icon(Icons.thumb_down,
                                        color: Colors.white70),
                                    const SizedBox(width: 30),
                                    Icon(Icons.comment,
                                        color: Colors.white70),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                const Text(
                                  "10 respuestas",
                                  style: TextStyle(color: Colors.blue),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      backgroundColor: Colors.black,
    );
  }

  Future<List<String>> fetchComments(String videoId) async {
    final response = await http.get(
      Uri.parse('https://www.googleapis.com/youtube/v3/commentThreads?part=snippet&videoId=$videoId&key=AIzaSyAaOa7DgE461eKAN5okwXdL6L94ILWgSvg'), 
    );

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      List<String> comments = [];
      for (var item in jsonData['items']) {
        comments.add(item['snippet']['topLevelComment']['snippet']['textDisplay']);
      }
      return comments;
    } else {
      throw Exception('Error al cargar comentarios');
    }
  }
}
