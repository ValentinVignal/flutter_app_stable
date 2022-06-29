import 'package:flutter_app_stable/router/page_name.dart';

class WebPage {
  const WebPage(this.name);

  final WebPageName name;
}

class ProjectWebPage extends WebPage {
  const ProjectWebPage({
    required this.id,
  }) : super(WebPageName.project);

  final String id;

  Map<String, String> get params => {
        'id': id,
      };
}
