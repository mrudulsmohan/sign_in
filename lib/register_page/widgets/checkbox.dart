import 'package:flutter/material.dart';

class CheckboxPolicy extends StatefulWidget {
  CheckboxPolicy({Key? key}) : super(key: key);

  @override
  _CheckboxPolicyState createState() => _CheckboxPolicyState();
}

class _CheckboxPolicyState extends State<CheckboxPolicy> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Checkbox(
            value: _isChecked,
            onChanged: (bool? value) {
              setState(() {
                _isChecked = value!;
              });
            },
          ),
          Expanded(
            child: Text(
              'By creating an account you agree to our Terms & conditions and Privacy Policy',
              style: TextStyle(
                fontSize: 12,
                color: const Color.fromARGB(160, 156, 166, 167),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
