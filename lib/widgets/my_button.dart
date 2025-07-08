import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final String buttonText;
  final Function()? onTap;

  const MyButton({
    super.key,
    required this.buttonText,
    this.onTap,
  });

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue,
          border: Border.all(),
          gradient: const LinearGradient(
            colors: [
              Color.fromARGB(255, 4, 36, 61),
              Color.fromARGB(255, 27, 80, 121),
              Color.fromARGB(255, 74, 129, 172),
              Color.fromARGB(255, 127, 173, 207),
              Color.fromARGB(255, 187, 216, 238),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.buttonText,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}
