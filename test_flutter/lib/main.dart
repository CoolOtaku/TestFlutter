import 'package:flutter/material.dart';

import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'YouCoolMusic 3';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        canvasColor: Colors.black26,
        primaryColor: Color(0xff181818),
        scaffoldBackgroundColor: Color(0xff2A2E30),
        cardColor: Colors.black54,
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
          headline6: TextStyle(),
        ).apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
              color: Colors.white
          ),
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Image.asset("src/img/animetan.png",),
                onPressed: () => Scaffold.of(context).openDrawer()
              );
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.my_library_music_sharp),
              onPressed: () {  },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {  },
            ),
          ],
        ),
        body: Container(
          child: ListView(
            padding: EdgeInsets.all(8),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.network("https://www.codevscolor.com/static/a52c47c1630c976219efdfde80ca4241/79d30/flutter-create-circular-image.png",width: 100),
                  Flexible(
                      child: new Text("A loooooooooooooooooooooooooooooooooooooooooooooooooong text")),
                  PopupMenuButton(
                    icon: Icon(Icons.more_vert,color: Colors.white, size: 35),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("Second"),
                        textStyle: TextStyle(),
                      )
                    ],
                    onCanceled: (){print("click");},
                  )
                ],
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: DrawerHeader(
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          image:DecorationImage(
                            image: AssetImage('src/img/youtube.png'),
                            fit: BoxFit.cover,
                          )
                      ), child: null,
                    ),
                  )
                ],
              ),
              ListTile(
                leading: Icon(Icons.playlist_add_check,color: Colors.white),
                title: Text ("Експортувати плей лист"),
              ),
              Divider (),
              ListTile(
                leading: Icon(Icons.repeat_sharp,color: Colors.white),
                title: Text ("Замінити плей лист",),
              ),
              Divider (),
              ListTile(
                leading: Icon(Icons.playlist_add,color: Colors.white),
                title: Text ("Імпортувати плей лист"),
              ),
              Divider (),
              ListTile(
                leading: Icon(Icons.delete_sweep,color: Colors.white),
                title: Text ("Видалити всю музику"),
              ),
              Divider (),
              ListTile(
                leading: Icon(Icons.info_outline,color: Colors.white),
                title: Text ("Про розробника та додаток"),
              ),
            ],
          ),
        ),
    ),
    );
  }
}
