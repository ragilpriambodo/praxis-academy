import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp(post: fetchPost()));

class MyApp extends StatelessWidget {
  final Future<Post> post;
  MyApp({Key key, this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Post>(
            future: post,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.body); //jika body "untuk menampilkan isi body", title "untuk menampilkan isi judul"
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;
 
  Post({this.userId, this.id, this.title, this.body});
 
  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
 

Future<Post> fetchPost() async{
  final response =
      await http.get('http://jsonplaceholder.typicode.com/posts/2');
  if (response.statusCode == 200){
    return Post.fromJson(json.decode(response.body));
  }else{
    throw Exception('Failed to load post');
  }
}