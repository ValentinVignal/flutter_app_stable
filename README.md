# flutter_app_stable

## Go router

This is a POC to investigate how to use [go_router](https://pub.dev/packages/go_router).


It needs to be able to:
- [x] Redirect to different pages
  - `goNamed` or `pushNamed`.
- [x] Update the URL when the page changes
  - Done by the `path` of each route.
- [x] Rebuild the app when the user changes the URL
  - It looks like it works out of the box from the routes
- [x] Work with the internet navigator arrows.
- :x: Updates the URL without triggering the rebuild of the UI (ex: URL parameter)
  - Not possible, I tried with `html.window.history.pushState(null, 'home', '#/home/other');` or `html.window.location.href = myPath;`, but then it is out of sync with go router and things get messy.
- :x: Create "shells": Stateful widgets that queries data and provide it with [provider](https://pub.dev/packages/provider). 
  Maybe there is a workaround possible with [riverpod](https://pub.dev/packages/riverpod)
  - This also means that the routing might need to be nested.
- [x] Force reload the UI (This might be need when data are cleared)
  - Do a `router.refresh()`
- [ ] Add security/checks when a page is pushed/an URL is loaded if the user doesn't have access to the page.
- [ ] Animate between pages.
- [x] Access the root router without the `context`.
  - Store `router` in a global variable and call the methods on it.
- :x: Allow to change the URL of the pages in history (ex: parameters linked to a singleton/shared state of the app).
  - Not possible, but the redirect can correct them when the user go back to apply the global filters.
  - This kind of screw up the back/forward browser's history button though. (https://github.com/flutter/flutter/issues/108714)
- [x] Replace all method.
  - This is done with `go` or `goNamed`.
- [x] Replace the current page. 
  https://github.com/flutter/flutter/issues/106402
- [ ] Ability to pop several pages at once.
  https://github.com/flutter/flutter/issues/109128 
  https://github.com/flutter/flutter/issues/107052 
- [x] Being able to implement a custom address bar (desktop).
- [x] Being able to have the same page in the history several times.
  https://github.com/flutter/flutter/issues/107045
- [x] When in a single object screen, be able to switch to next / previous according to the applied filters.
- [ ] Handle drawer that acts as a page.


# Comments

## String and no types.

Go router uses mostly strings.
To push a new page, you need to push the URL. It is possible not to manipulate URL at all by using names pages. But the parameters and query parameters are still given through a `Map<String, String>`. 

But google works on [go_router_builder](https://pub.dev/packages/go_router_builder) which brings type safety with generated code.

## Nesting

One of the biggest issue is that it doesn't support nested routers/shells at the moment.
- https://docs.google.com/document/u/0/d/1_mRXinbL_rb0mUt6DAFZ8kj0kh33ZjEMJuUq4PJgwj8/mobilebasic?resourcekey=0-sYbRzE9opneOFZ5F8J3gGw
- https://github.com/csells/go_router/issues/82
- https://github.com/flutter/flutter/issues/99126

The [doc](https://gorouter.dev/nested-navigation) suggests to use `StatefulWidget`s to keep the state between pages, but this implies to wrap every sub-screen inside the same stateful widgets.

## Having the same page in the history several times

If we use the `builder` from `GoRoute` and push twice the same page in the history (for example `/projects/projectID0`), the navigator will throw a duplicated key error.
This if because, by default, the key given to the navigator is `ValueKey('/projects/:id')` ([see](https://gorouter.dev/declarative-routing#router-state)). We would need to use `pageBuilder` and create the page with a unique key ourselves.

## Deep Linking

This is supported automatically for web, iOS and android ([see](https://gorouter.dev/declarative-routing#deep-linking)).


# Conclusion

I don't think we can migrate our web code to go router right now. Or we should change the way we query and store data, which is a massive change.

When the nested routing is supported, we should try to use it.

For our mobile application, we should have no issue using and I think we should as it will make our app supports deep links.
