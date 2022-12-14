import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsappclone/pages/call_view.dart';
import 'package:whatsappclone/pages/camera_view.dart';
import 'package:whatsappclone/pages/chat_view.dart';
import 'package:whatsappclone/pages/status_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.camera_alt)),
    Tab(text: 'CHATS'),
    Tab(text: 'STATUS'),
    Tab(text: 'CALLS'),
  ];
  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData(
          primaryColor: Color(0xff075e54),
        ),
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          backgroundColor: Color.fromARGB(255, 19, 116, 55),
          actions: [
            IconButton(
                onPressed: () {
                  print("Search");
                },
                icon: Icon(Icons.search)),
            IconButton(
                onPressed: () {
                  print("three dot");
                },
                icon: Icon(Icons.more_vert))
          ],
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: topTabs,
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Camera_view(),
            Chat_View(),
            Status_view(),
            Call_view(),
          ],
        ),
      ),
    );
  }
}
