import 'package:flutter/material.dart';

class Chat_View extends StatelessWidget {
  const Chat_View({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Chat_Widget("Shahzeb", "Assignment krdo", "12:00 AM"),
          Chat_Widget("Ahmed", "Done", "11:29 PM"),
          Chat_Widget("Bilal", "Assalamoalikum", "11:00 AM"),
          Chat_Widget("Sir Kamran", "Theek he", "09:00 AM"),
          Chat_Widget("Usman Uni", "No", "12:15 AM"),
          Chat_Widget("Jaffar", "Hi, Jaffar herr", "04:40 PM"),
          Chat_Widget("Imran", "Assalamoalikum", "12:30 AM"),
          Chat_Widget("Hasan ALi", "Assalamoalikum", "12:34 AM"),
          Chat_Widget("Noman School", "Assalamoalikum", "12:45 AM"),
          Chat_Widget("qasim shop", "Assalamoalikum", "12:34 AM"),
          Chat_Widget("Hamza Coaching", "Assalamoalikum", "12:32 AM"),
          Chat_Widget("Ahmed Nabeel", "Assalamoalikum", "04:43 AM"),
          Chat_Widget("Omar", "Assalamoalikum", "11:00 AM"),
          Chat_Widget("Ali", "Assalamoalikum", "12:00 AM"),
        ],
      ),
    );
  }
}

Chat_Widget(name, msg, time) {
  return ListTile(
    tileColor: Colors.white,
    leading: const CircleAvatar(
      // backgroundColor: Colors.red,
      child: Image(
        image: NetworkImage(
            'https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTc5OTk2ODUyMTMxNzM0ODcy/gettyimages-1229892983-square.jpg'),
      ),
    ),
    title: Text("$name"),
    subtitle: Text("$msg"),
    trailing: const Icon(Icons.check),
  );
}
