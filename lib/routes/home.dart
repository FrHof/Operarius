import 'package:flutter/material.dart';
import '../utils/list_card.dart';

const String appTitle = "Operarius";

class MainList extends StatefulWidget {
  const MainList({Key? key}) : super(key: key);
  @override
  _MainListState createState() => _MainListState();
}

class _MainListState extends State<MainList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text(appTitle),
        leading: IconButton(
          icon: const Icon(Icons.beenhere),
          onPressed: validateButton,
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (_, index) => 
              ListCard(index.toString())
        ),
      ),
    );
  }

  void validateButton(){
    //TODO
  }
}
