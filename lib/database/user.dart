import 'package:flutter_riverpod/flutter_riverpod.dart';

enum UserRole {
  admin,
  user,
  guest,
  readOnly,
}

class User {
  const User({
    required this.id,
    required this.name,
    required this.role,
  });

  final int id;
  final String name;

  final UserRole role;
}

const _users = [
  User(
    id: 0,
    name: 'John Doe',
    role: UserRole.admin,
  ),
  User(
    id: 1,
    name: 'Jane Doe',
    role: UserRole.user,
  ),
  User(
    id: 2,
    name: 'Alice',
    role: UserRole.guest,
  ),
  User(
    id: 3,
    name: 'Bob',
    role: UserRole.readOnly,
  ),
  User(
    id: 4,
    name: 'Charlie',
    role: UserRole.admin,
  ),
  User(
    id: 5,
    name: 'David',
    role: UserRole.user,
  ),
  User(
    id: 6,
    name: 'Eve',
    role: UserRole.guest,
  ),
  User(
    id: 7,
    name: 'Frank',
    role: UserRole.readOnly,
  ),
  User(
    id: 8,
    name: 'Grace',
    role: UserRole.admin,
  ),
  User(
    id: 9,
    name: 'Hannah',
    role: UserRole.user,
  ),
  User(
    id: 10,
    name: 'Ivy',
    role: UserRole.guest,
  ),
  User(
    id: 11,
    name: 'Jack',
    role: UserRole.readOnly,
  ),
  User(
    id: 12,
    name: 'Kelly',
    role: UserRole.admin,
  ),
  User(
    id: 13,
    name: 'Liam',
    role: UserRole.user,
  ),
  User(
    id: 14,
    name: 'Mia',
    role: UserRole.guest,
  ),
  User(
    id: 15,
    name: 'Noah',
    role: UserRole.readOnly,
  ),
];

final usersProvider = FutureProvider.autoDispose<List<User>>((ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return _users;
});

final userProvider =
    FutureProvider.autoDispose.family<User, int>((ref, id) async {
  await Future.delayed(const Duration(seconds: 1));
  return _users.firstWhere((user) => user.id == id);
});
