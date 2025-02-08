import 'package:flutter/material.dart';
import 'package:musicplayer/components/my_drawer.dart';
import 'package:musicplayer/models/playlist_provider.dart';
import 'package:provider/provider.dart';

import '../models/song.dart';
import 'song_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> { 
  late final dynamic playlistProvider;

  @override
  void initState(){
    super.initState();
    playlistProvider = Provider.of<PlaylistProvider>(context, listen: false);
  }

  void gotoSong(int songIndex){
    playlistProvider.currentSongIndex = songIndex;
    Navigator.push(context, MaterialPageRoute(builder: (context)=> SongPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: Text("P L A Y L I S T")),
      drawer: MyDrawer(),
      body: Consumer<PlaylistProvider>(
        builder:(context, value, child) {
          final List<Song> _playlist = value.playlist;
          return ListView.builder(  
            itemCount: _playlist.length,
            itemBuilder: (context, index){
              final Song song = _playlist[index];
             return  ListTile(
                title: Text(song.songName),
                subtitle: Text(song.artistName),
                leading: Image(image: AssetImage(song.albumArtImagePath)),
                onTap: (){
                  gotoSong(index);
                },
              );
            },
          );
        }
      )
    );
  }
}