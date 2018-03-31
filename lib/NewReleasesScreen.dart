import 'package:flutter/material.dart';


class NewReleasesScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _NewReleasesScreenState();

}

class _NewReleasesScreenState extends State<NewReleasesScreen> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Pushups Pro"),
        backgroundColor: Colors.black,
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back, color: Colors.white,),
            onPressed: null),
      ),
      body: new Container(
          color: Colors.orange,
          child: Column(
            children: <Widget>[
              new SetsWidget([3, 4, 7, 5, 3]),
              new Container(
                child: new GestureDetector(
                  onTap: null,
                  child: new Container(
                    color: Colors.black,
                    child: new Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: new Center(
                        child: new Text(
                          "ABORT",
                          style: new TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }

}

class SetsWidget extends StatelessWidget {

  final List<int> sets;

  SetsWidget(this.sets);

  @override
  Widget build(BuildContext context) {
    return new Align(
      alignment: new Alignment(0.0, -1.0),
      child: new Container(
        color: Colors.grey,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: new List.generate(6, (i) {
            if (i == 5) {
              // No dot
              return new SetWidget(i, i == 3);
            } else {
              return Row(
                children: <Widget>[
                  new SetWidget(i, i == 3),
                  new Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: new Opacity(
                      opacity: 0.4,
                      child: new Material(
                        color: Colors.black,
                        type: MaterialType.circle,
                        child: new Container(
                          width: 4.0,
                          height: 4.0,
                        ),
                      ),
                    ),
                  )
                ],
              );
            }
          }),
        ),
      ),
    );
  }
}

class SetWidget extends StatelessWidget {

  final int _setAmount;
  final bool _selected;

  SetWidget(this._setAmount, this._selected);

  @override
  Widget build(BuildContext context) {
    return new Stack(
        alignment: AlignmentDirectional.center,
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 14.0, 8.0, 14.0),
            child: new Material(
              color: _selected ? Colors.black : Colors.white,
              type: MaterialType.circle,
              child: Container(
                width: 40.0,
                height: 40.0,
              ),
            ),
          ),
          new Center(
            child: new Opacity(
              opacity: _selected ? 1.0 : 0.4,
              child: new Text(
                _setAmount.toString(),
                textAlign: TextAlign.center,
                style: new TextStyle(
                  color: _selected ? Colors.orange : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ]);
  }
}