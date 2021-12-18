import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyIconButton extends StatelessWidget {
  final VoidCallback? onPress;
  final IconData iconData;

  const MyIconButton(
      {Key? key, VoidCallback? this.onPress, required this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 24.0,
      splashRadius: 18.0,
      icon: FaIcon(
        iconData,
        color: Theme.of(context).buttonColor,
      ),
      onPressed: onPress ?? () {},
    );
  }
}
