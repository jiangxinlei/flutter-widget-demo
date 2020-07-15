/**
 * Draggable - 拖拽
 * 
 * 
 * LongPressDraggable 部件继承 Draggable，用法和 Draggable 完全一样，
 * 区别是 LongPressDraggable 触发拖动的方式是长按，Draggable 是按下
 */

import 'package:flutter/material.dart';

class DraggableWidget extends StatefulWidget {
  @override
  _DraggableWidgetState createState() => _DraggableWidgetState();
}

class _DraggableWidgetState extends State<DraggableWidget> {
  var _dragData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draggable'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Draggable(
              // Draggable 有两个必填的参数 child 和 feedback

              // 定义拖拽传递的数据
              data: Color(0x000000FF),
              // child 是需要拖拽的子控件 
              child: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Text(
                  '书月秋亭',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),

              // feedback 是 拖动时跟随移动的组件
              feedback: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '书月秋亭',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
              ),

              // childWhenDragging 是在 child 组件被拖拽时定义其样式
              childWhenDragging: Container(
                height: 100,
                width: 100,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '书月秋亭',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18
                  ),
                ),
              ),

              // 控制拖动的方向，下面时只允许垂直方向移动
              axis: Axis.vertical,

              // 拖动过程中的回调事件
              // 开始拖动时回调
              onDragStarted: (){
                print('onDragStarted');
              },
              // 拖动结束时回调
              onDragEnd: (DraggableDetails details){
                print('onDragEnd:$details');
              },
              // 未拖动到 DragTarget 控件上时回调
              onDraggableCanceled: (Velocity velocity, Offset offset){
                print('onDraggableCanceled velocity:$velocity,offset:$offset');
              },
              // 拖动到 DragTarget 控件上时回调
              onDragCompleted: (){
                print('onDragCompleted');
              },
            ),

            SizedBox(height: 20),

            
            // DragTarget 是 被拖拽组件的目的地，Draggable 部件可以被拖拽到此控件上

            // DragTarget有3个回调：
            // 1、onWillAccept：拖到该控件上时调用， 
            // 返回 true 时，candidateData 参数的数据是 Draggable 的 data 数据
            // 返回 false 时，rejectedData 参数的数据是 Draggable 的 data 数据
            // 返回
            // 2、onAccept：onWillAccept 返回 true 时，松手后回调
            // 3、onLeave：onWillAccept 返回 false 时，松手后回调
            DragTarget<Color>(
              onWillAccept: (Color color) {
                print('onWillAccept: $color');
                return true;
              },
              onAccept: (Color color) {
                setState(() {
                  _dragData = color;
                });
                print('onAccept: $color');
              },
              onLeave: (Color color) {
                print('onLeave: $color');
              },
              builder: (
                BuildContext context, 
                List<Color> candidateData,
                List<dynamic> rejectedData) {
                  print('candidateData: $candidateData, rejectedData: $rejectedData');

                  if (_dragData == null) {
                    return Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.red)
                      ),
                    );
                  } else {
                    return Container(
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text(
                        '书月秋亭',
                        style: TextStyle(
                          color: Colors.white, 
                          fontSize: 18
                        ),
                      ),
                    );
                  }
                }
            ),
            
          ],
        )

        
      ),
    );
  }
}