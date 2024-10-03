
import 'package:aprendiendo/vistas/paginas/youtubeprof/services/api_service.dart';
import 'package:aprendiendo/vistas/paginas/youtubeprof/ui/general/colors.dart';
import 'package:aprendiendo/vistas/paginas/youtubeprof/ui/widgets/item_filter_widget.dart';
import 'package:aprendiendo/vistas/paginas/youtubeprof/ui/widgets/item_video_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final APIService _apiService = APIService();

  @override
  Widget build(BuildContext context) {
    _apiService.getVideos();
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.0,
          vertical: 12,
        ),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(
                      Icons.explore_outlined,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Explorar",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: KBrandSecondaryColor,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 38.0,
                    child: VerticalDivider(
                      color: KBrandSecondaryColor,
                      thickness: 1.0,
                    ),
                  ),
                  ItemFilterWidget(
                    texto: "Todos",
                    isSelected: true,
                  ),
                  ItemFilterWidget(
                    texto: "Mixes",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    texto: "Música",
                    isSelected: false,
                  ),
                  ItemFilterWidget(
                    texto: "Programación",
                    isSelected: false,
                  ),
                ],
              ),
            ),
            ItemVideoWidget(),
            ItemVideoWidget(),
            ItemVideoWidget(),
          ],
        ),
      ),
    );
  }
}
