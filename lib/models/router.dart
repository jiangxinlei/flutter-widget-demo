import 'package:flutter/material.dart';

class RouterListChild {
  String title;
  String subTitle;
  Widget page;

  RouterListChild.fromMap(Map<String, dynamic> json) {
    this.title = json['title'];
    this.subTitle = json['subTitle'];
    this.page = json['page'];
  }
}

class RouterList {
  String headerTitle;
  bool isExpanded;
  List<RouterListChild> child;

  RouterList.fromMap(Map<String, dynamic> json) {
    this.headerTitle = json['headerTitle'];
    this.isExpanded = json['isExpanded'];
    this.child = (json['child'] as List<dynamic>).map((item) {
      return RouterListChild.fromMap(item);
    }).toList();
  }
}