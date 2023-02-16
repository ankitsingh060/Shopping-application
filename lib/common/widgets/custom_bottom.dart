import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomBottom({Key? key,
    required this.text,
    required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(text,),
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
        ),
    );
  }
}
