import 'package:flutter/material.dart';
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
                  const Text('Log in to your account'),
                  const SizedBox(height: 48),
                  const Text('Email address'),
                  const SizedBox(height: 8),
                  const TextField(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: Text('Email address'),
                      ),
                      Flexible(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text('Forgot password?'),
                        ),
                      ),
                    ],
                  ),
                  const TextField(),
                  const SizedBox(height: 32),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Log in'),
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Row(
                    children: [
                      Expanded(child: Divider()),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('Or log in with'),
                      ),
                      Expanded(child: Divider()),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: SvgPicture.asset('assets/google.svg'),
                          label: const Text('Google'),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton.icon(
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
                      children: [
                        const TextSpan(
                          text: 'Want to become a Prudential agent?  ',
                        ),
                        TextSpan(
                          text: 'Sign up',
                          style: TextStyle(
                            color: theme.colorScheme.primary,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 48),
                ],
              ),
            ),
            const Divider(),
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
                const Text('Welcome to PRUForce'),
                const SizedBox(height: 8),
                const Text('Singapore'),
                const Spacer(),
                Expanded(
                  flex: 2,
                  child: SvgPicture.asset('assets/circle_logo.svg'),
                ),
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
          child: Image(
            image: AssetImage(
              'assets/trees.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
