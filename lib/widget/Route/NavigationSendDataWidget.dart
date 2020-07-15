import 'package:flutter/material.dart';

class NavigationSendDataWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigationSendData'),
      ),
      body: TodoPage(
        todos: List.generate(20, (i) => Todo(
          'todo $i',
          'todo description $i' 
        )),
      ),
    );
  }
}

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

class TodoPage extends StatelessWidget {
  final List<Todo> todos;

  TodoPage({ Key key, @required this.todos }) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DetailPage(),
                  settings: RouteSettings(
                    arguments: todos[index]
                  )
                )
              );
            },
          );
        }
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Todo todo = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Center(
        child: Text(todo.description),
      ),
    );
  }
}