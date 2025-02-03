import 'package:flutter/material.dart';

class PaddingVsSize extends StatefulWidget {
  const PaddingVsSize({super.key});

  @override
  State<PaddingVsSize> createState() => _PaddingVsSizeState();
}

class _PaddingVsSizeState extends State<PaddingVsSize> {
  var _textSize = 12.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: _Padding(
                    textSize: _textSize,
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: _Size(
                    textSize: _textSize,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Slider(
            value: _textSize,
            min: 6,
            max: 100,
            onChanged: (value) {
              setState(() {
                _textSize = value;
              });
            },
          ),
        ),
      ],
    );
  }
}

class _Padding extends StatelessWidget {
  const _Padding({
    required this.textSize,
  });

  final double textSize;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(
          'Padding',
          style: TextStyle(
            fontSize: textSize,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
      ),
    );
  }
}

class _Size extends StatelessWidget {
  const _Size({
    required this.textSize,
  });

  final double textSize;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.secondaryContainer,
      child: SizedBox(
        width: 100,
        height: 80,
        child: Center(
          child: Text(
            'Size',
            style: TextStyle(
              fontSize: textSize,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
        ),
      ),
    );
  }
}
