class Tasks {
  const Tasks({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;
}

const tasks = [
  Tasks(id: 'taskID0', name: 'taskName0'),
  Tasks(id: 'taskID1', name: 'taskName1'),
  Tasks(id: 'taskID2', name: 'taskName2'),
];
