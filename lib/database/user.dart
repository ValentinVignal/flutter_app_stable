import 'package:built_collection/built_collection.dart';
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
    required this.age,
  });

  final int id;
  final String name;
  final UserRole role;
  final int age;
}

const _users = [
  User(
    id: 0,
    name: 'John Doe',
    role: UserRole.admin,
    age: 22,
  ),
  User(
    id: 1,
    name: 'Jane Doe',
    role: UserRole.user,
    age: 25,
  ),
  User(
    id: 2,
    name: 'Alice',
    role: UserRole.guest,
    age: 30,
  ),
  User(
    id: 3,
    name: 'Bob',
    role: UserRole.readOnly,
    age: 35,
  ),
  User(
    id: 4,
    name: 'Charlie',
    role: UserRole.admin,
    age: 40,
  ),
  User(
    id: 5,
    name: 'David',
    role: UserRole.user,
    age: 45,
  ),
  User(
    id: 6,
    name: 'Eve',
    role: UserRole.guest,
    age: 29,
  ),
  User(
    id: 7,
    name: 'Frank',
    role: UserRole.readOnly,
    age: 33,
  ),
  User(
    id: 8,
    name: 'Grace',
    role: UserRole.admin,
    age: 37,
  ),
  User(
    id: 9,
    name: 'Hannah',
    role: UserRole.user,
    age: 23,
  ),
  User(
    id: 10,
    name: 'Ivy',
    role: UserRole.guest,
    age: 27,
  ),
  User(
    id: 11,
    name: 'Jack',
    role: UserRole.readOnly,
    age: 31,
  ),
  User(
    id: 12,
    name: 'Kelly',
    role: UserRole.admin,
    age: 34,
  ),
  User(
    id: 13,
    name: 'Liam',
    role: UserRole.user,
    age: 38,
  ),
  User(
    id: 14,
    name: 'Mia',
    role: UserRole.guest,
    age: 26,
  ),
  User(
    id: 15,
    name: 'Noah',
    role: UserRole.readOnly,
    age: 32,
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

final userAgeFilterProvider =
    Provider.autoDispose<({int from, int to})>((ref) => (from: 0, to: 100));

final userRoleFilterProvider =
    Provider.autoDispose<BuiltSet<UserRole>>((ref) => BuiltSet());

final usersFilteredProvider = FutureProvider.autoDispose<List<User>>(
  (ref) async {
    final age = ref.watch(userAgeFilterProvider);
    final roleFilter = ref.watch(userRoleFilterProvider);
    final users = await ref.watch(usersProvider.future);

    return users.where((user) {
      if (user.age < age.from || user.age > age.to) {
        return false;
      }
      if (roleFilter.isNotEmpty) {
        if (!roleFilter.contains(user.role)) {
          return false;
        }
      }
      return true;
    }).toList();
  },
  dependencies: [usersProvider, userAgeFilterProvider, userRoleFilterProvider],
);
