import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  RandomWords({Key key}) : super(key: key);

  @override
  _RandomWordsState createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final _suggestions = <WordPair>[];
  final _saved = new Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Lista Infinita"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.list), 
          onPressed: _pushSaved,)
        ],
      ),
      body: _buildSuggestions(),
    );
  }

  void _pushSaved(){
    Navigator.of(context).push(
      new MaterialPageRoute(
        builder: (context){
          final tiles = _saved.map(
            (pair){
                return new ListTile(title: new Text(pair.asPascalCase),);
              }
          );

          final divided = ListTile.divideTiles(
            context: context,
            tiles: tiles,
          ).toList();

          return new Scaffold(
            appBar: new AppBar(
              title: new Text("Guardadas"),
              backgroundColor: Colors.redAccent,
            ),
            body: new ListView(children: divided,),
          );
        }
      )
    );
  }
  Widget _buildSuggestions() {
    return ListView.builder(
      itemBuilder: (context, index) {
        if (index.isOdd) return new Divider();

        final indexFinal = index ~/ 2;

        if (indexFinal >= _suggestions.length) {
          _suggestions.addAll(generateWordPairs().take(10));
        }

        return _buildRow(_suggestions[indexFinal]);
      },
    );
  }

  Widget _buildRow(WordPair pair) {
    final bool alreadySaved = _saved.contains(pair);
    for (var item in _saved) {
      print(item);
    }
    return new ListTile(
        title: new Text(pair.asPascalCase),
        trailing: new Icon(
            alreadySaved ? Icons.favorite : Icons.favorite_border,
            color: Colors.redAccent),
        onTap: () {
          setState(() {
            if (alreadySaved){
              _saved.remove(pair);
            } else {
            _saved.add(pair);
            }
          });
        });
  }
}
