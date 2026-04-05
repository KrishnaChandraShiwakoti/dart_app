import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print('\n--- To-Do App ---');
    print('1. Add Task');
    print('2. Remove Task');
    print('3. View Tasks');
    print('4. Exit');
    stdout.write('Choose an option: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter task: ');
        String? task = stdin.readLineSync();
        if (task != null && task.isNotEmpty) {
          tasks.add(task);
          print('Task added!');
        }
        break;

      case '2':
        stdout.write('Enter task index to remove: ');
        int? index = int.tryParse(stdin.readLineSync() ?? '');
        if (index != null && index >= 0 && index < tasks.length) {
          tasks.removeAt(index);
          print('Task removed!');
        } else {
          print('Invalid index');
        }
        break;

      case '3':
        print('\nYour Tasks:');
        for (int i = 0; i < tasks.length; i++) {
          print('$i: ${tasks[i]}');
        }
        break;

      case '4':
        print('Exiting...');
        return;

      default:
        print('Invalid choice');
    }
  }
}
