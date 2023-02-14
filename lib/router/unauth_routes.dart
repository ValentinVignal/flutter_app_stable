import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screen.dart';

part 'unauth_routes.g.dart';

@TypedGoRoute<LoginRoute>(path: '/login')
class LoginRoute extends GoRouteData {
  const LoginRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Screen(name: 'Login');
  }
}

@TypedGoRoute<SignUpRoute>(path: '/sign-up')
class SignUpRoute extends GoRouteData {
  const SignUpRoute();
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const Screen(name: 'Sign Up');
  }
}
