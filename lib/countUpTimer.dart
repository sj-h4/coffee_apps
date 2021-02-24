import 'package:flutter/material.dart';
import 'dart:async';

class CountUpTimer extends StatefulWidget {
  CountUpTimer({Key key}) : super(key: key);

  @override
  _CountUpTimerState createState() => _CountUpTimerState();
}

class _CountUpTimerState extends State<CountUpTimer> {
  int _start = 0;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 1),
            (Timer timer) => setState(
                () {
                  if(_start < 46) {
                    timer.cancel();
                  } else {
                    _start = _start + 1;
                  }
                },
            ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("タイマー"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_start',
              // ignore: deprecated_member_use
              style: Theme.of(context).textTheme.display4,
            ),
          ],
        ),
      ),
    );
  }
}

