import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  final VoidCallback? callback;
  final Widget child;

  const InputCard({
    required this.child,
    this.callback, //required 가 있으면 무조건 들어가야됨
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
          onTap: () => callback?.call(),
          child: InputContents(child: child),
      ),
    );
  }
}

class InputContents extends StatelessWidget {
  const InputContents({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal:12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey, width: 8),
      ),
      child: child,
    );
  }
}