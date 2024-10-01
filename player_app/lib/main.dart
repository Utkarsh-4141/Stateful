import "package:flutter/material.dart";

void main() {
  runApp(const PlayerApp());
}

class PlayerApp extends StatefulWidget {
  const PlayerApp({super.key});

  @override
  State<PlayerApp> createState() => _PlayerAppState();
}

class _PlayerAppState extends State<PlayerApp> {

  int counter = 0;
  List<String> playersList = <String>[
    "https://media.gettyimages.com/id/2156157054/photo/london-england-india-all-rounder-kapil-dev-holds-aloft-the-trophy-on-the-balcony-after-the.jpg?s=612x612&w=gi&k=20&c=gG7mlL3xmjL6HLnkATlP65aVCZ6GSQaVm4Lg9ikeqVs=",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZqWZ8x6UgStxeXKNihouwQV5sCTmVgBOZvm1xqfSZwOQnuVmfnqStCrssEdlU4DZ5i-A&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTJCB5FElI20O_k3gKqWXiFZo0ac6AeUlgkRP_FDggnqiB_-GqIp-7OM3rtsPkFeqkC3PY&usqp=CAU",
    "https://static.toiimg.com/thumb/msid-111528868,width-1280,height-720,resizemode-4/111528868.jpg",
    "https://static.toiimg.com/thumb/msid-111400558,width-1280,height-720,resizemode-4/111400558.jpg"
  ];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("PlayerApp"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(playersList[counter],
              height: 300,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(counter < playersList.length-1) {
              counter++;
            }else {
              counter = 0;
            }
            setState(() {});
          },
          child: const Icon(Icons.forward),
        ),
      ),
    );
  }
}