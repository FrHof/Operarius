import 'package:flutter/material.dart';
import '../utils/list_card.dart';
import '../utils/task.dart';

const String appTitle = "Operarius";
List<Task> tasks = [
  Task("Sortir le chien", 4, DateTime.now(), Category.chores),
  Task("Payer les impots", 2, DateTime.utc(1989, 11, 9), Category.economic),
  Task("Lire un bon livre", 3, DateTime.utc(1989, 11, 9), Category.culture),
  Task("Amener Nono a annecy", 1, DateTime.utc(1989, 11, 9), Category.helpOther),
  Task("Manger mieux", 5, DateTime.utc(1989, 11, 9), Category.health),
];

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
            itemCount: tasks.length,
            itemBuilder: (context, index){
              final item = tasks[index];
              return ListCard(item);
            }

        ),
      ),
    );
  }

  void validateButton(){
    //TODO
  }
}
