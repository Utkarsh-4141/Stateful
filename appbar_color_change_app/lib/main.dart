import "package:flutter/material.dart";

void main() {
  runApp(const AppBarColorChangeApp());
}

class AppBarColorChangeApp extends StatefulWidget {
  const AppBarColorChangeApp({super.key});

  @override
  State<AppBarColorChangeApp> createState() => _AppBarColorChangeAppState();
}

class _AppBarColorChangeAppState extends State<AppBarColorChangeApp> {
  bool changeColor = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "AppBarColorChange",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("AppBarColorChange"),
          centerTitle: true,
          backgroundColor: (changeColor)?Colors.amber:Colors.blue,
        ), 
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("AppBar Color Change App"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(changeColor == true) {
              changeColor = false;
            }else {
              changeColor = true;
            }
            setState(() {});
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}