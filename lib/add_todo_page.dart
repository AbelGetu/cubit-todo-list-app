import 'package:cubit_todolist_app/cubit/todo_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  final todoTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                controller: todoTitleController,
                decoration: const InputDecoration(hintText: 'Title'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(onPressed: () {
                // BlocProvider.of<TodoCubit>(context).addTodo(
                //   todoTitleController.text.trim()
                // );
                // the above the will do the same as the blow but the below one is a bit shorter
                context.read<TodoCubit>().addTodo(
                  todoTitleController.text.trim()
                );
              }, child: const Text('Add'))
            ],
          ),
        ),
      ),
    );
  }
}
