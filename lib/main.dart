import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wordpair = WordPair.random();
    return MaterialApp(
      title: 'Slut first',
      home: RandomWords(




      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  RandomWordState createState() => new RandomWordState();
}

class RandomWordState extends State<RandomWords> {
  final List<WordPair> _listbahasa = <WordPair>[];
  final TextStyle _biggerFont = const TextStyle(fontSize: 18.0);
  @override // Add from this line ...
  Widget build(BuildContext context) {
    // final WordPair wordPair = new WordPair.random();
    // return new Text(wordPair.asPascalCase);
    return Scaffold(
      appBar: AppBar(
        title: Text('List Slut'),
      ),
      body: _buildsugesti(),
    );
  }

  Widget _buildsugesti() {
    return ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemBuilder: (BuildContext contextbuild, int i) {
          if (i.isOdd) {
            return new Divider();
          }
          final int index = i ~/ 2;
          if (index >= _listbahasa.length){
            _listbahasa.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_listbahasa[index]);
        }
    );
  }
  Widget _buildRow(WordPair pair) {
    return new ListTile(
      title: new Text(
        pair.asPascalCase,
        style: _biggerFont,
      ),
    );
  }
}
