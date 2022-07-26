import 'package:faker/faker.dart';

enum TaskStatus {
  open,
  inProgress,
  done,
}

extension TaskStatusX on TaskStatus {
  static TaskStatus generate() {
    return random.element(TaskStatus.values);
  }
}
