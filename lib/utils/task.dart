import 'package:flutter/material.dart';

enum Category {
  hobby,
  job,
  helpOther,
  health,
  projects,
  culture,
  chill,
  chores,
  economic
}

const Map<Category, IconData> categoryIcons = {
  Category.hobby : Icons.directions_bike,
  Category.job : Icons.laptop_chromebook,
  Category.helpOther : Icons.group,
  Category.health : Icons.fitness_center,
  Category.projects : Icons.folder_special,
  Category.culture : Icons.local_library,
  Category.chill : Icons.beach_access,
  Category.chores : Icons.local_laundry_service,
  Category.economic : Icons.euro_symbol,
};


const Map<Category, MaterialColor> colorsIcons = {
  Category.hobby : Colors.amber,
  Category.job : Colors.cyan,
  Category.helpOther : Colors.lightGreen,
  Category.health : Colors.pink,
  Category.projects : Colors.blue,
  Category.culture : Colors.brown,
  Category.chill : Colors.yellow,
  Category.chores : Colors.orange,
  Category.economic : Colors.green,
};

class Task {
  String title;
  int priority; // on 5
  DateTime deadline;
  Category category;
  Task(this.title, this.priority, this.deadline, this.category);

}

