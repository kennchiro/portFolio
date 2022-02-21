import 'package:flutter/material.dart';

class OutilsDetails extends StatelessWidget {
  final Widget iconLangage;
  final Widget listTile;

  const OutilsDetails({
    Key? key,
    required this.iconLangage,
    required this.listTile,
  }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: iconLangage,
      title: listTile,
    );
  }
}
