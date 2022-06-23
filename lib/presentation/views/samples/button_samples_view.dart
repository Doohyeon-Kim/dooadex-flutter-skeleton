import 'package:dooadex_palette/dooadex_palette.dart';
import 'package:flutter/material.dart';

import '../../../components/buttons/dooadex_button.dart';

class ButtonSamplesView extends StatelessWidget {
  const ButtonSamplesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DooadexButton.convex(
          onPressed: () {},
          onPressedChild: const Text(
            "Convex Button",
            style: TextStyle(color: Colors.white),
          ),
          child: const Text(
            "Convex Button",
            style: TextStyle(color: Colors.white),
          ),
        ),
        DooadexButton.elevated(
          onPressed: () {},
          child: const Text("Elevated Button"),
        ),
        DooadexButton.filled(
          onPressed: () {},
          child: const Text("Filled Button"),
        ),
        DooadexButton.filledTonal(
          onPressed: () {},
          child: const Text(
            "Filled Tonal Button",
            style: TextStyle(color: Colors.white),
          ),
        ),
        DooadexButton.outlined(
          onPressed: () {},
          child: const Text("Outlined Button"),
        ),
        DooadexButton.text(
          onPressed: () {},
          child: const Text("Text Button"),
        ),
        DooadexButton.filled(
          onPressed: () {},
          circular: 20,
          child: const Text("Circular Filled Button"),
        ),
        const SizedBox(
          height: 8,
        ),
        DooadexButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.wb_incandescent_outlined,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        DooadexButton.fab(
          onPressed: () {},
          child: const Icon(
            Icons.send,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        DooadexButton.expandedFAB(
          onPressed: () {},
          icon: const Icon(
            Icons.send,
            color: Colors.white,
          ),
          label: Text(
            "Expanded FAB",
            style: DooadexTypo.caption1.copyWith(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
