import 'package:flutter/material.dart';

class RememberPasswordCheckbox extends StatefulWidget {
  RememberPasswordCheckbox({Key? key}) : super(key: key);

  @override
  _RememberPasswordCheckboxState createState() =>
      _RememberPasswordCheckboxState();
}

class _RememberPasswordCheckboxState extends State<RememberPasswordCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Checkbox(
            value: _isChecked,
            onChanged: (bool? value) {
              setState(() {
                _isChecked = value!;
              });
            },
          ),
          const Text(
            'Remember Password',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
