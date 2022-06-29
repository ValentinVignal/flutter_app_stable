enum WebPageAccessType {
  none,
  authenticated,
  unauthenticated,
}

enum WebPageName {
  home(path: '/', access: WebPageAccessType.none),
  login(path: '/login', access: WebPageAccessType.unauthenticated),
  signUp(path: '/sign-up', access: WebPageAccessType.unauthenticated),
  projects(path: '/projects'),
  project(path: ':id');

  const WebPageName({
    required this.path,
    this.access = WebPageAccessType.authenticated,
  });

  final String path;

  final WebPageAccessType access;
}

extension WebPageNameX on WebPageName {
  // https://github.com/flutter/flutter/issues/106163
  String get pageName => name.toLowerCase();

  static final _nameToEntry = WebPageName.values
      .asMap()
      .map((_, value) => MapEntry(value.pageName, value));

  static WebPageName fromPageName(String name) {
    final page = _nameToEntry[name];
    if (page == null) {
      throw UnsupportedError('Page $name does not exist');
    }
    return page;
  }
}
