import 'package:flutter/material.dart';

import '../../../components/buttons/dooadex_button.dart';
import '../../../configs/palette.dart';

class ButtonSamplesView extends StatelessWidget {
  const ButtonSamplesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DooadexButton.convex(
          onPressed: () {},
          child: const Text(
            "Convex Button",
          ),
          onPressedChild: const Text(
            "Convex Button",
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
          child: const Text("Filled Tonal Button"),
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
          child: const Text("Circular Filled Button"),
          circular: 20,
        ),
        const SizedBox(
          height: 8,
        ),
        DooadexButton.icon(
          onPressed: () {},
          icon: Icon(
            Icons.wb_incandescent_outlined,
            color: DooadexColor.green,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        DooadexButton.fab(
          onPressed: () {},
          backgroundColor: DooadexColor.ashGray,
          child: const Icon(
            Icons.send,
            color: Colors.black87,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        DooadexButton.expandedFAB(
          onPressed: () {},
          backgroundColor: DooadexColor.ashGray,
          icon: const Icon(
            Icons.send,
            color: Colors.black87,
          ),
          label: Text(
            "Expanded FAB",
            style: Typo.caption.copyWith(color: Colors.black87),
          ),
        ),
      ],
    );
  }
}
