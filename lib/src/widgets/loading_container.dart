import 'package:flutter/material.dart';

class LoadingContainer extends StatelessWidget {
  Widget build(context) {
    return Column(children: [
      ListTile(
        title: buildContainer(),
        subtitle: buildContainer(),
        trailing: Column(
          children: <Widget>[
            Icon(Icons.comment),
            Text('  '),
          ],
        ),
      ),
      Divider(
        height: 8,
      ),
    ]);
  }

  Widget buildContainer() {
    return Container(
      color: Colors.grey[200],
      height: 24,
      width: 100,
      margin: EdgeInsets.only(
        top: 5,
        bottom: 5,
      ),
    );
  }
}
