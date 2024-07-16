import 'package:cubit_todolist_app/models/todo_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit(): super([]);

  void addTodo(String name) {
    if(name.isEmpty) {
      addError('name cannot be empty');
      return;
    }
    final todo = Todo(name: name, createdAt: DateTime.now());
    
    // state.add(todo);
    // emit([...state]);
    emit([...state, todo]);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    // TODO: implement onChange
    super.onChange(change);
  }
  
  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
    print(error);
  }
}