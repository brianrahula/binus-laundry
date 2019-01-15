import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Post> fetchPost() async {
  final response = await http.post(
    'http://web.binus.ac.id/binussquare/LaundryQueue/DropInQueue.aspx/GetData',
    headers: {
      "Content-Type": "application/json; chrset=utf-8",
    },
  );

  if (response.statusCode == 200) {
    return Post.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load post');
  }
}

class Post {
  final String counter1,
      counter2,
      counter3,
      counter4,
      counter5,
      name1,
      name2,
      name3,
      name4,
      name5;
  final String
  queue1,
      queue2,
      queue3,
      queue4,
      queue5;

  Post(
      {this.counter1,
        this.counter2,
        this.counter3,
        this.counter4,
        this.counter5,
        this.name1,
        this.name2,
        this.name3,
        this.name4,
        this.name5,
        this.queue1,
        this.queue2,
        this.queue3,
        this.queue4,
        this.queue5});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      counter1: json['d'][0]['CounterName'],
      counter2: json['d'][1]['CounterName'],
      counter3: json['d'][2]['CounterName'],
      counter4: json['d'][3]['CounterName'],
      counter5: json['d'][4]['CounterName'],
      name1: json['d'][0]['Name'],
      name2: json['d'][1]['Name'],
      name3: json['d'][2]['Name'],
      name4: json['d'][3]['Name'],
      name5: json['d'][4]['Name'],
      queue1: json['d'][0]['QueueNo'],
      queue2: json['d'][1]['QueueNo'],
      queue3: json['d'][2]['QueueNo'],
      queue4: json['d'][3]['QueueNo'],
      queue5: json['d'][4]['QueueNo'],
    );
  }
}



class Queue extends StatelessWidget {
  final Future<Post> post;

  Queue({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Center(
        child: FutureBuilder<Post>(
          future: post,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(children: <Widget>[
                 Container(height: 105,child: Column(
                    children: <Widget>[
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text('Queue',style: TextStyle(fontSize: 42)),
                      ),
                    ],
                  ),
                ),
                Spacer(flex: 1),
                Expanded(
                    flex: 5,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                                Radius.circular(15.0))
                        ),                        width: 250,
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Spacer(),
                              Text(
                                snapshot.data.counter1,
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 2,
                                  color: Colors.orange,
                                ),
                              ),
                              Text(
                                snapshot.data.queue1,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 42),
                              ),
                              Text(
                                snapshot.data.name1,
                                style: TextStyle(color: Colors.white),
                              ),
                              Spacer(),
                            ],
                          ),
                        ))),
                Spacer(flex: 1),
                Expanded(
                    flex: 5,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                                Radius.circular(15.0))
                        ),                        width: 250,
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Spacer(),
                              Text(
                                snapshot.data.counter2,
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 2,
                                  color: Colors.orange,
                                ),
                              ),
                              Text(
                                snapshot.data.queue2,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 42),
                              ),
                              Text(
                                snapshot.data.name2,
                                style: TextStyle(color: Colors.white),
                              ),
                              Spacer(),
                            ],
                          ),
                        ))),
                Spacer(flex: 1),
                Expanded(
                    flex: 5,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                                Radius.circular(15.0))
                        ),                        width: 250,
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Spacer(),
                              Text(
                                snapshot.data.counter3,
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 2,
                                  color: Colors.orange,
                                ),
                              ),
                              Text(
                                snapshot.data.queue3,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 42),
                              ),
                              Text(
                                snapshot.data.name3,
                                style: TextStyle(color: Colors.white),
                              ),
                              Spacer(),
                            ],
                          ),
                        ))),
                Spacer(flex: 1),
                Expanded(
                    flex: 5,
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(
                                Radius.circular(15.0))
                        ),                        width: 250,
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              Spacer(),
                              Text(
                                snapshot.data.counter4,
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Container(
                                  height: 2,
                                  color: Colors.orange,
                                ),
                              ),
                              Text(
                                snapshot.data.queue4,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 42),
                              ),
                              Text(
                                snapshot.data.name4,
                                style: TextStyle(color: Colors.white),
                              ),
                              Spacer(),
                            ],
                          ),
                        ))),
                Spacer(flex: 1),
                Expanded(
                    flex: 5,
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                              Radius.circular(15.0))
                      ),
                      child: Center(
                        child: Column(
                          children: <Widget>[
                            Spacer(),
                            Text(
                              snapshot.data.counter5,
                              style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Container(
                                height: 2,
                                color: Colors.orange,
                              ),
                            ),
                            Text(
                              snapshot.data.queue5,
                              style:
                              TextStyle(color: Colors.white, fontSize: 42),
                            ),
                            Text(
                              snapshot.data.name5,
                              style: TextStyle(color: Colors.white),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    )),
                Spacer(flex: 1),
              ]);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            // By default, show a loading spinner
            return CircularProgressIndicator();
          },
        ),
    );
  }
}
