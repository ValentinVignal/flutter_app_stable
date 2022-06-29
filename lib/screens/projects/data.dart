class Project {
  const Project({
    required this.id,
    required this.name,
  });

  final String id;
  final String name;
}

const projects = [
  Project(id: 'projectID0', name: 'projectName0'),
  Project(id: 'projectID1', name: 'projectName1'),
  Project(id: 'projectID2', name: 'projectName2'),
];
