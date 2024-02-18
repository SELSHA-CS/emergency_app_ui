import 'package:flutter/material.dart';

class bbBar extends StatelessWidget {
  const bbBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const BottomAppBar(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.home),
            Icon(Icons.calendar_month),
            Icon(Icons.folder),
            Icon(Icons.person_outline)
          ],
        ),
      ),
      color: Color.fromARGB(255, 219, 214, 214),
    );
  }
}