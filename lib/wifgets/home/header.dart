import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {

    var theme = Theme.of(context);
    return Flex(
      mainAxisAlignment: MainAxisAlignment.center,
      direction: Axis.horizontal,
      children: [
        Icon(
          Icons.rocket_launch_outlined,
          color: theme.colorScheme.primary,
          size: 36,
        ),
        SizedBox(width: 12),
        Text(
          'Validador de DeepLinks',
          style: theme.textTheme.headlineSmall,
        ),
      ],
    );
  }
}
