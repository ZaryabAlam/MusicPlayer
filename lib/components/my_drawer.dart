import 'package:flutter/material.dart';
import 'package:musicplayer/pages/setting_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          DrawerHeader(
              child: Center(
            child: Icon(Icons.music_note_rounded,
                size: 40, color: Theme.of(context).colorScheme.inversePrimary),
          )),
          Padding(
            padding: EdgeInsets.only(top: 25, left: 25),
            child: ListTile(
              title: Text("H O M E"),
              leading: Icon(Icons.home_rounded),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: 25),
            child: ListTile(
              title: Text("S E T T I N G S"),
              leading: Icon(Icons.settings_rounded),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SettingPage()));
              },
            ),
          )
        ],
      ),
    );
  }
}
