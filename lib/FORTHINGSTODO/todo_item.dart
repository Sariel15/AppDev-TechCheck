import 'package:flutter/material.dart';

import 'todo.dart';
import 'colors.dart';

class ToDoItem extends StatelessWidget {
  final ToDo todo;
  final onDeleteItem;

  const ToDoItem({
    Key? key,
    required this.todo,
    required this.onDeleteItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Color(0xffd9b585),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 20,
            color: tdBlack,
          ),
        ),
        trailing: Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 12),
          height: (MediaQuery.of(context).size.height / 2),
          width: 40,
          decoration: BoxDecoration(
            color: Colors.brown,
            borderRadius: BorderRadius.circular(5),
          ),
          child: IconButton(
            color: Color(0xffb5905e),
            iconSize: 18,
            icon: Icon(Icons.delete),
            padding: EdgeInsets.all(0),
            onPressed: () {
              // print('Clicked on delete icon');
              onDeleteItem(todo.id);
            },
          ),
        ),
      ),
    );
  }
}
