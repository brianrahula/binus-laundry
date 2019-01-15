import 'package:flutter/material.dart';

class Settings extends StatelessWidget{
  Widget build(BuildContext context){
    return Column(
      children: <Widget>[
        Container(height: 105,child: Column(
          children: <Widget>[
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('Personalize',style: TextStyle(fontSize: 42)),
            ),
          ],
        )),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(child: Text('Countdown notification'),),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Switch(onChanged: (null),value: true),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Container(child: Text('Sound Effect'),),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Switch(onChanged: (null),value: true),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}