import 'package:flutter/material.dart';

class LogoSection extends StatelessWidget {
  final String _title;
  final String _titleDesc;

  LogoSection(this._title, this._titleDesc);

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
          child: Center(child: Text(this._title, style: Theme.of(context).textTheme.title)),
        ),
        Center(child: 
          Text(
            this._titleDesc, style: Theme.of(context).textTheme.body1
          )
        )
      ],
    );
  }
}