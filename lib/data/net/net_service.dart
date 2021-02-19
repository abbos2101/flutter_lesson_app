import 'package:dio/dio.dart';
import 'package:flutter_lesson_app/data/net/post_model.dart';

class NetService {
  final String baseUrl = "https://www.terabayt.uz/";

  Future<List<PostModel>> getPosts() async {
    final Dio dio = Dio();
    Response response = await dio.get(
      "${baseUrl}api.php?action=posts",
      options: Options(
        receiveTimeout: 30000,
        sendTimeout: 30000,
      ),
    );
    List<PostModel> list = [];
    for (int i = 0; i < (response.data as List).length; i++) {
      list.add(PostModel.fromJson(response.data[i]));
    }
    return list;
  }
}
