import 'package:flutter/material.dart';
import 'package:wondereng_shopping_mall/generated/l10n.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).shopping_malls_page_title),
        ),
        body: Container(
          child: Center(child: 
          Text('Please Look at the code UI Part was unable to develop during the provided time.'),),
        ));
  }
}