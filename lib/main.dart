import 'package:flutter/material.dart';
import 'package:hacktoberfest/chat_model.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fruit Chat'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () =>Get.bottomSheet(
              Container(
                color: Colors.black12,
                height: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () => Get.changeTheme(ThemeData.light()),
                        child: Text('Light')),
                    InkWell(
                      onTap: () => Get.changeTheme(ThemeData.dark()),
                        child: Text('Dark'))
                  ],
                ),
              )
            ), icon: Icon(Icons.settings),)
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.message_outlined),
        ),
        body: ListView.builder(
            itemCount: chat.length,
            itemBuilder: (context, i) => ListTile(
                  leading: CircleAvatar(
                    maxRadius: 30,
                    backgroundColor: Colors.blueGrey,
                    backgroundImage: NetworkImage(chat[i].imgUrl),
                  ),
                  title: Text(
                    chat[i].name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    chat[i].message,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )),
      ),
    );
  }
}
