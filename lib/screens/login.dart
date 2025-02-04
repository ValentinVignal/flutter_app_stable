import 'package:flutter/material.dart';
import 'package:flutter_app_stable/user_notifier.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: _Background(),
          ),
          Center(
            child: _Foreground(),
          ),
        ],
      ),
    );
  }
}

class _Foreground extends StatefulWidget {
  const _Foreground();

  @override
  State<_Foreground> createState() => __ForegroundState();
}

class __ForegroundState extends State<_Foreground> {
  late final _emailController = TextEditingController()
    ..addListener(() {
      setState(() {});
    });
  late final _passwordController = TextEditingController()
    ..addListener(() {
      setState(() {});
    });

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: Card(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Log in to your account',
                    style: theme.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 48),
                  Text(
                    'Email address',
                    style: theme.textTheme.labelMedium,
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _emailController,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          'Password',
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      Flexible(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text('Forgot password?'),
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    controller: _passwordController,
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: _emailController.text.isEmpty ||
                              _passwordController.text.isEmpty
                          ? null
                          : () {
                              userNotifier.value = _emailController.text;
                            },
                      child: const Text('Log in'),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          color: theme.textTheme.labelSmall!.color,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Or log in with',
                          style: theme.textTheme.labelSmall,
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          color: theme.textTheme.labelSmall!.color,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/google.svg'),
                          label: const Text('Google'),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/facebook.svg'),
                          label: const Text('Facebook'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Text.rich(
                    TextSpan(
                      style: theme.textTheme.labelMedium,
                      children: [
                        const TextSpan(
                          text: 'Want to become a Prudential agent?  ',
                        ),
                        WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: TextButton(
                            onPressed: () {},
                            child: const Text('Sign up'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 32,
                bottom: 40,
              ),
              child: SvgPicture.asset('assets/prudential.svg'),
            ),
          ],
        ),
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80),
                  child: SvgPicture.asset(
                    height: 86,
                    width: 190,
                    'assets/pru_force_logo.svg',
                  ),
                ),
                const SizedBox(height: 84),
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: FractionallySizedBox(
                    widthFactor: 0.5,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Welcome to PRUForce',
                      style: theme.textTheme.displayLarge,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.only(left: 80.0),
                  child: Text(
                    'Singapore',
                    style: theme.textTheme.displayMedium,
                  ),
                ),
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: SvgPicture.asset('assets/circle_logo.svg'),
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Icon(Icons.help_outline),
                    SizedBox(width: 16),
                    Text('Support '),
                  ],
                )
              ],
            ),
          ),
        ),
        const Expanded(
          child: SizedBox(
            height: double.infinity,
            child: Image(
              image: AssetImage(
                'assets/trees.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
