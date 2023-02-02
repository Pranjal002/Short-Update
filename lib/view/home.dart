import 'package:flutter/material.dart';
import 'package:shortupdates/view/widget/NewsContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          controller: PageController(initialPage: 0),
          scrollDirection: Axis.vertical,
          itemCount: 10,
          itemBuilder: (context, index) {
            return NewsContainer(
                imgUrl:
                    "https://images.unsplash.com/photo-1588681664899-f142ff2dc9b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bmV3c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1400&q=60",
                newsHead: "5g in nepal",
                newsDes:
                    "Nepal Telecom received the spectrum allotment and trial permission from the regulator on November 22, 2021. It started working on the 5G trial preparation by forming a task force in mid-December. The telecom said that it took time for the company to get the licence to import equipment for the 5G trial.",
                newsUrl:
                    "https://kathmandupost.com/money/2023/01/01/nepal-telecom-puts-5g-test-on-hold#:~:text=Nepal%20Telecom%20received%20the%20spectrum,equipment%20for%20the%205G%20trial.");
          }),
    );
  }
}
