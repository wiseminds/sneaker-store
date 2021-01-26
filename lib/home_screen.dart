import 'package:flutter/material.dart';
import 'package:sneakerstore/app_drawer.dart';
import 'package:sneakerstore/widgets/custom_appbar.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: CustomAppbar(
        title: 'New Arrival',
        leading: Builder(
          builder: (c) => IconButton(
            onPressed: () {
              _key.currentState.openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
      ),
      drawer: AppDrawer(),
    );
  }
}
