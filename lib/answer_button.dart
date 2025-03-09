import "package:flutter/material.dart";

class AnswerButton extends StatelessWidget {
  const AnswerButton(this.label, this.onTap, {super.key});
  final String label;
  final void Function() onTap;
  @override
  Widget build(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          backgroundColor: Colors.black54,
          foregroundColor: Colors.white70,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(999))),
      onPressed: onTap,
      child: Text(
        label,
        textAlign: TextAlign.center,
      ),
    );
  }
}
