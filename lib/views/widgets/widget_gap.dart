import 'package:flutter/material.dart';

class VGap extends StatelessWidget {
  const VGap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 10,
    );
  }
}

class HGap extends StatelessWidget {
  const HGap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 10,
    );
  }
}
