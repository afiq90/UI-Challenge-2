import 'package:flutter/material.dart';

class BottomContent extends StatefulWidget {
  final String title;
  final Icon leadingIcon;
  final Icon trailingIcon;

  //Construtor for stateful widget
  const BottomContent({Key key, this.title, this.leadingIcon, this.trailingIcon}) : super(key:key);

  @override
  _BottomContentState createState() => _BottomContentState();
}

class _BottomContentState extends State<BottomContent> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: widget.leadingIcon,
      title: Text(
        widget.title,
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 17.0),
      ),
      trailing: widget.trailingIcon,
    );
  }
}
