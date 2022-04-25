import 'package:flutter/material.dart';

class TextFormFieldSamplesView extends StatelessWidget {
  const TextFormFieldSamplesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(hintText: "Hint Text"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration:
                InputDecoration(hintText: "Hint Text", labelText: "Label Text"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Hint Text",
              labelText: "Label Text",
              errorText: "Error Text",
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration.collapsed(
              hintText: "Hint Text",
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration.collapsed(
              hintText: "Hint Text",
              border: OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Hint Text",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Hint Text",
              border: OutlineInputBorder(),
              suffixIcon: Container(
                child: Icon(
                  Icons.visibility,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
