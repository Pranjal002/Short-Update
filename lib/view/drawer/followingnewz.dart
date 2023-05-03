import 'package:flutter/material.dart';
import 'package:shortupdates/view/widget/followingnews.dart';

class followingnews extends StatefulWidget {
  const followingnews({super.key});

  @override
  State<followingnews> createState() => _followingnewsState();
}

class _followingnewsState extends State<followingnews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
            child: Text(
              "Following News",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: const MyNews(),
    );
  }
}
