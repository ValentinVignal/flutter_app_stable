import 'package:flutter/material.dart';
import 'package:flutter_app_stable/database/user.dart';
import 'package:flutter_app_stable/router/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsersScreen extends ConsumerStatefulWidget {
  const UsersScreen({super.key});

  @override
  ConsumerState<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends ConsumerState<UsersScreen> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final users = ref.watch(usersFilteredProvider).valueOrNull ?? const [];
    final ages = ref.watch(userAgeFilterProvider);
    final roles = ref.watch(userRoleFilterProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: ListView.builder(
        itemCount: users.length + 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return ListTile(
              title: RangeSlider(
                min: 0,
                max: 100,
                values: RangeValues(ages.from.toDouble(), ages.to.toDouble()),
                onChanged: (value) {
                  UsersRoute(
                    ageFrom: value.start.toInt(),
                    ageTo: value.end.toInt(),
                    role: roles.toSet(),
                  ).replace(context);
                },
              ),
            );
          }
          if (index == 1) {
            return SegmentedButton<UserRole>(
              segments: UserRole.values
                  .map((userRole) => ButtonSegment(
                        value: userRole,
                        label: Text(userRole.name),
                      ))
                  .toList(),
              selected: roles.toSet(),
              emptySelectionAllowed: true,
              multiSelectionEnabled: true,
              onSelectionChanged: (newRoles) {
                UsersRoute(
                  ageFrom: ages.from,
                  ageTo: ages.to,
                  role: newRoles,
                ).replace(context);
              },
            );
          }
          final user = users[index - 2];
          return ListTile(
            title: Text(user.name),
            subtitle: Text(user.role.name),
            trailing: Text('${user.age}'),
            onTap: () {
              UserRoute(id: user.id).push(context);
            },
          );
        },
      ),
    );
  }
}
