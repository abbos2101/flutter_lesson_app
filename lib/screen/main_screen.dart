import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String title = "flutter";
  int id = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widgetAppBar(),
      body: widgetBody(),
      floatingActionButton: widgetFloatingBar(),
    );
  }

  Widget widgetAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text("Contacts", style: TextStyle(color: Colors.grey)),
      centerTitle: true,
    );
  }

  Widget widgetFloatingBar() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.white,
      child: Icon(Icons.edit, color: Colors.grey),
    );
  }

  Widget widgetBody() {
    List list = ["Flutter", "iOS", "Android", "C#"];
    list.add("ggfd");
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemCount: list.length,
      itemBuilder: (context, index) => Text(
        "${list[index]}",
        style: TextStyle(fontSize: 40),
      ),
      //widgetItem(imageId: index, title: "title = ${list[index]}"),
      separatorBuilder: (context, index) => Container(
        width: double.infinity,
        height: 2,
        color: Colors.blue,
      ),
    );
  }

  Widget widgetItem({@required int imageId, String title}) {
    return Container(
      margin: EdgeInsets.all(20),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 10)]),
      child: Row(
        children: [
          SizedBox(width: 20),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.yellow,
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.grey),
              image: DecorationImage(
                image: NetworkImage(
                  "https://randomuser.me/api/portraits/men/$imageId.jpg",
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$title",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Mobile",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}
