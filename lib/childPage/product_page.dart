import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  // 返回每个隐藏的菜单项
  SelectView (IconData icon, String text, String id) {
      return new PopupMenuItem<String>(
          value: id,
          child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                  new Icon(icon, color: Colors.blue),
                  new Text(text),
              ],
          )
      );
  }
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
           '产品',
          style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromRGBO(255, 255, 255, 1)),
         ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_a_photo),
            tooltip: 'add photo',
            onPressed: (){},
          ),
          PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<String>>[
              this.SelectView(Icons.message, '发起群聊', 'A'),
              this.SelectView(Icons.group_add, '添加服务', 'B'),
              this.SelectView(Icons.cast_connected, '扫一扫码', 'C'),
            ],
            onSelected: (String action) {
              switch (action) {
                case 'A': break;
                case 'B': break;
                case 'C': break;
              }
            },
          )
        ],
      ),
      body: Center(
        child: Text('全部产品'),
      ),
    );
  }
}

