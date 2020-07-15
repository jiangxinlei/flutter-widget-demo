import 'package:flutter/material.dart';

class BaselineWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Baseline'),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          height: 120,
          width: 120,
          child: Baseline(
            baseline: 100,     // Baseline 部件在 父容器上延伸的距离
            baselineType: TextBaseline.alphabetic,
            child: Container(
              color: Colors.red,
              height: 60,
              width: 60,
            ),
          ),
        ),
      ),
    );
  }
}