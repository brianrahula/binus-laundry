import 'package:flutter/material.dart';
import 'queue.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  int result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<Post>(
          future: fetchPost(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var q1, q2, q3, q4, q5;
              q1 = int.parse(snapshot.data.queue1);

              if (snapshot.data.queue1.toString() == '') {
                q1 = 0;
              }
              q2 = int.parse(snapshot.data.queue2);
              if (snapshot.data.queue2.toString() == '') {
                q2 = 0;
              }
              q3 = int.parse(snapshot.data.queue3);
              if (snapshot.data.queue3.toString() == '') {
                q3 = 0;
              }
              q4 = int.parse(snapshot.data.queue4);
              if (snapshot.data.queue4.toString() == '') {
                q4 = 0;
              }
              q5 = int.parse(snapshot.data.queue5);
              if (snapshot.data.queue5.toString() == '') {
                q5 = 0;
              }
              List<int> nums = [q1, q2, q3, q4, q5];
              nums.sort();
              var max = nums[4];
              if (snapshot.data.queue1 != '') {
                return Column(
                  children: <Widget>[
                    Spacer(),
                    Container(
                      child: Center(
                        child: Row(
                          children: <Widget>[
                            Spacer(),
                            Center(
                              child: Text(
                                result != null
                                    ? result > max
                                        ? '${result - max}\nuntil your number'
                                        : 'Your number is\nalready passed'
                                    : 'No number',
                                style: TextStyle(fontSize: 48),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                    Text('Current Number:$max'),
                    Text(result != null
                        ? 'Your number:$result'
                        : 'Please input your number'),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(left: 150.0, right: 150.0),
                      child: TextField(
                        decoration:
                            InputDecoration(hintText: 'Input your number here'),
                        onSubmitted: (String a) {
                          setState(() {
                            result = int.parse(a);
                          });
                        },
                        keyboardType: TextInputType.numberWithOptions(),
                        maxLength: 3,
                      ),
                    ),
                  ],
                );
              } else {
                return Text("Laundry not open yet");
              }
            } else if (snapshot.hasError) {
              return Text("Opps... no Internet");
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
