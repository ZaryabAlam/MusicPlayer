import 'package:flutter/material.dart';
import 'package:musicplayer/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class NeuBox extends StatelessWidget {
  final Widget? child;
  NeuBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    bool isDarkmode = Provider.of<ThemeProvider>(context).isDarkMode;
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.background,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
                color:
                isDarkmode
                ? Colors.black
                : Colors.grey.shade500,
                blurRadius: 15,
                offset: Offset(4, 4)),
            BoxShadow(
                color:  isDarkmode
                ? Colors.grey.shade800
               :  Colors.white, blurRadius: 15, offset: Offset(-4, -4))
          ]),
      child: child,
    );
  }
}
