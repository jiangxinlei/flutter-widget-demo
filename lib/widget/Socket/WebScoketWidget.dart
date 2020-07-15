import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebScoketWidget extends StatefulWidget {
  @override
  _WebScoketWidgetState createState() => _WebScoketWidgetState(
    channel: IOWebSocketChannel.connect('ws://echo.websocket.org'),
  );
}

class _WebScoketWidgetState extends State<WebScoketWidget> {
  final WebSocketChannel channel;

  _WebScoketWidgetState({ Key key, @required this.channel });

  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    channel.sink.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('websocket'),
      ),
      body: Column(
        children: <Widget>[
          Form(
            child: TextFormField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'send a message'
              ),
            )
          ),

          StreamBuilder(
            stream: channel.stream,
            builder: (context, snapshot) {
              return Text(
                snapshot.hasData ? '${snapshot.data}' : ''
              );
            }
          )
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _sendMessage,
        tooltip: 'send message',
        child: Icon(Icons.send),
      ),
    );
  }

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      channel.sink.add(_controller.text);
    }
  }



}