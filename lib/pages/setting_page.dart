import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:musicplayer/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
       return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: Text("S E T T I N G S ")),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            margin:  EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(15),
              
            ),
            child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Dark Mode",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
              CupertinoSwitch(value: Provider.of<ThemeProvider>(context, listen: false).isDarkMode, onChanged: (value)=>Provider.of<ThemeProvider>
              (context, listen: false).toggleTheme())
              ],
            ),
          )

        ],
      ),
    );
  }
}