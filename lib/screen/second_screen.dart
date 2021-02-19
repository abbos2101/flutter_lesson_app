import 'package:flutter/material.dart';
import 'package:flutter_lesson_app/data/net/net_service.dart';
import 'package:flutter_lesson_app/data/net/post_model.dart';
import 'package:flutter_lesson_app/screen/my_model.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  bool loading = false;
  List<PostModel> list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          loading = true;
          setState(() {});

          NetService netService = NetService();
          list = await netService.getPosts();
          loading = false;
          setState(() {});
        },
      ),
      body: loading
          ? Center(child: CircularProgressIndicator())
          : ListView.separated(
              itemCount: list.length,
              itemBuilder: (context, index) => Text(
                "${list[index].title}",
                style: TextStyle(fontSize: 20),
              ),
              separatorBuilder: (context, index) => Divider(),
            ),
    );
  }
}
