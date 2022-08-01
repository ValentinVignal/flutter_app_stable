import 'package:flutter_app_stable/utils/utils.dart';
import 'package:json_annotation/json_annotation.dart';

part 'global_filters.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.kebab,
)
class GlobalFiltersParameters {
  const GlobalFiltersParameters({
    this.projectId,
  });

  factory GlobalFiltersParameters.fromParsedData({
    Set<int>? projectIds,
  }) {
    final String? projectId;
    if (projectIds?.isNotEmpty ?? false) {
      projectId = projectIds!.join(' ');
    } else {
      projectId = null;
    }
    return GlobalFiltersParameters(projectId: projectId);
  }

  factory GlobalFiltersParameters.fromJson(Json json) =>
      _$GlobalFiltersParametersFromJson(json);

  final String? projectId;

  Set<int> get parsedProjectIds {
    if (projectId == null || projectId!.isEmpty) return const {};
    return projectId!.split(' ').map((id) => int.parse(id)).toSet();
  }

  Json toJson() => _$GlobalFiltersParametersToJson(this);

  Json mergeJson(Json other) {
    final newJson = {...other};
    for (final entry in toJson().entries) {
      if (entry.value == null) {
        newJson.remove(entry.key);
      } else {
        newJson[entry.key] = entry.value;
      }
    }
    return newJson;
  }

  bool get isEmpty => projectId == null || projectId!.isEmpty;
  bool get isNotEmpty => !isEmpty;
}
