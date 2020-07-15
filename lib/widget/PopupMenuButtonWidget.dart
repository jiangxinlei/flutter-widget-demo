import 'package:flutter/material.dart';

class PopupMenuButtonWidget extends StatefulWidget {
  @override
  _PopupMenuButtonWidgetState createState() => _PopupMenuButtonWidgetState();
}

enum WhyFarther { harder, smarter, selfStarter, tradingCharter }

class _PopupMenuButtonWidgetState extends State<PopupMenuButtonWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButton'),
      ),
      body: Center(
        child: PopupMenuButton<WhyFarther>(
          onSelected: (WhyFarther result) {},
          itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
            const PopupMenuItem<WhyFarther>(
              value: WhyFarther.harder,
              child: Text('Working a lot harder'),
            ),
            const PopupMenuItem<WhyFarther>(
              value: WhyFarther.smarter,
              child: Text('Being a lot smarter'),
            ),
            const PopupMenuItem<WhyFarther>(
              value: WhyFarther.selfStarter,
              child: Text('Being a self-starter'),
            ),
            const PopupMenuItem<WhyFarther>(
              value: WhyFarther.tradingCharter,
              child: Text('Placed in charge of trading charter'),
            ),
          ],
        ),
      ),
    );
  }
}