import 'package:flutter/material.dart';




class TrendingScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: new List.generate(40, (index) {
        return new ListTile(
          leading: new FlutterLogo(colors: Colors.purple,),
          title: new Text("The Last Movie"),
          subtitle: new Text("Publish Radio Alliance"),
          trailing: new CircleAvatar(
            backgroundColor: Colors.grey,
            child: new Icon(Icons.add, color: Colors.white,),
          ),
        );
      }),
    );
  }
}


class TopScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: new List.generate(40, (index) {
        return new ListTile(
          leading: new FlutterLogo(colors: Colors.red,),
          title: new Text("Radiolab"),
          subtitle: new Text("WNYC Studios"),
          trailing: new CircleAvatar(
            backgroundColor: Colors.grey,
            child: new Icon(Icons.add, color: Colors.white,),
          ),
        );
      }),
    );
  }
}

class NearbyScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Icon(Icons.phone_android),
        new Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 56.0, 0.0, 16.0),
          child: new Text(
            "Share your podcasts with people around you.",
            style: new TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        new Text("This will only be active while on this page."),
        new Padding(
          padding: const EdgeInsets.symmetric(vertical: 56.0),
          child: new MaterialButton(
            minWidth: 200.0,
            onPressed: (){ print("Button clicked"); },
            color: Colors.lightBlue,
            textColor: Colors.white,
            child: new Text("SEARCH"),
          ),
        )
      ],
    );
  }
}

class NetworksScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: new List.generate(40, (index) {
        return new ListTile(
          leading: new FlutterLogo(colors: Colors.amber,),
          title: new Text("Radiotopia"),
          subtitle: new Text("Radiotopia from PRX is a collective of the btest story-driven shows on the planet."),
        );
      }),
    );
  }
}

class CategoriesScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: new List.generate(40, (index) {
        return new Column(
          children: [
            new ListTile(
            leading: new Icon(Icons.gamepad, color: Colors.blue,),
            title: new Text("Games & Hobbies"),
            ),
            new Divider(indent: 72.0,)
          ]
        );
      }),
    );
  }
}