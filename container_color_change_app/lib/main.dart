import "package:flutter/material.dart";

void main() {
  runApp(const ContainerColorApp());
}

class ContainerColorApp extends StatefulWidget {
  const ContainerColorApp({super.key});

  @override
  State<ContainerColorApp> createState() => _ContainerColorAppState();
}

class _ContainerColorAppState extends State<ContainerColorApp> {
  bool changeColor = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "ContainerColorChange",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ContainerColorChange"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Container(
            height: 250,
            width: 250,
            color: (changeColor)?Colors.amber:Colors.blue,
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