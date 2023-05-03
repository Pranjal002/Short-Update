import 'package:flutter/material.dart';

class MyNews extends StatefulWidget {
  const MyNews({super.key});

  @override
  State<MyNews> createState() => _MyNewsState();
}

class _MyNewsState extends State<MyNews> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 160,
                width: 140,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    color: const Color.fromARGB(255, 251, 252, 252),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(20.0))),
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                    child: Text(
                      "FOX NEWS",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Follow",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ]),
              ),
              Container(
                height: 160,
                width: 140,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    color: const Color.fromARGB(255, 251, 252, 252),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(20.0))),
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                    child: Text(
                      "BBC News",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Follow",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 160,
                width: 140,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    color: const Color.fromARGB(255, 251, 252, 252),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(20.0))),
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                    child: Text(
                      "Kantipur News",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Follow",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ]),
              ),
              Container(
                height: 160,
                width: 140,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    color: const Color.fromARGB(255, 251, 252, 252),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(20.0))),
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                    child: Text(
                      "Annapurna News",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Follow",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ]),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 160,
                width: 140,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    color: const Color.fromARGB(255, 251, 252, 252),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(20.0))),
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                    child: Text(
                      "Purbeli News",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Follow",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ]),
              ),
              Container(
                height: 160,
                width: 140,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45),
                    color: const Color.fromARGB(255, 251, 252, 252),
                    borderRadius:
                        const BorderRadius.all(Radius.circular(20.0))),
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 9, 0, 0),
                    child: Text(
                      "Telegraph News",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        "Follow",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ]),
              ),
            ],
          )
        ]));
  }
}
