import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shortupdates/view/drawer/followingnewz.dart';
import 'package:shortupdates/view/signin_screen.dart';
import 'package:shortupdates/view/widget/NewsContainer.dart';
import 'package:flutter/services.dart' as rootBundle;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<List<Productdatamodel>> ReadJsondata() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('jsonfile/output.json');
    final list = json.decode(jsondata) as List<dynamic>;

    return list.map((e) => Productdatamodel.fromJson(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const NavigationDrawer(),
      appBar: AppBar(
        title: const Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 100, 0),
            child: Text(
              "My Feed",
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
        backgroundColor: Colors.grey,
        elevation: 0,
      ),
      body: FutureBuilder(
        future: ReadJsondata(),
        builder: (context, data) {
          if (data.hasError) {
            return Text("${data.error}");
          } else if (data.hasData) {
            var items = data.data as List<Productdatamodel>;
            return PageView.builder(
                controller: PageController(initialPage: 0),
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return NewsContainer(
                      imgUrl:
                          "https://images.unsplash.com/photo-1588681664899-f142ff2dc9b1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bmV3c3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=1400&q=60",
                      newsHead: items[index].title.toString(),
                      newsDes: items[index].summary.toString(),
                      newsUrl: items[index].url.toString());
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildHeader(context),
          buildMenuItems(context),
        ],
      )),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
        ),
      );
  Widget buildMenuItems(BuildContext context) => Column(
        children: [
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text("Home"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
          ),
          ListTile(
            leading: const Icon(Icons.workspaces_outline),
            title: const Text("WorkFlow"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.newspaper_outlined),
            title: const Text("Following News Page"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const followingnews()));
            },
          ),
          const Divider(
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.contact_emergency_outlined),
            title: const Text("Contact Us"),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: const Text("Log Out"),
            onTap: () {
              FirebaseAuth.instance.signOut().then((value) {
                print("signout");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignInScreen()));
              });
            },
          )
        ],
      );
}

class Productdatamodel {
  String? title;
  String? url;
  String? summary;
  int? id;

  Productdatamodel({this.title, this.url, this.summary, this.id});

  Productdatamodel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    url = json['url'];
    summary = json['Summary'];
    id = json['id'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['url'] = url;
    data['Summary'] = summary;
    data['id'] = id;
    return data;
  }
}
