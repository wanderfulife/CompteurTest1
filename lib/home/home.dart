import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State {
  // VOITURE
  int _voiturecounter = 0;

  void _incrementCounter() {
    setState(() {
      _voiturecounter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_voiturecounter != 0) {
        _voiturecounter--;
      }
    });
  }

  // VEHICULE LEGER
  int _vuLcounter = 0;

  void _incrementVlCounter() {
    setState(() {
      _vuLcounter++;
    });
  }

  void _decrementVlCounter() {
    setState(() {
      if (_vuLcounter != 0) {
        _vuLcounter--;
      }
    });
  }

  // CAMIONS

  int _PLcounter = 0;

  void _incrementPlCounter() {
    setState(() {
      _PLcounter++;
    });
  }

  void _decrementPlCounter() {
    setState(() {
      if (_PLcounter != 0) {
        _PLcounter--;
      }
    });
  }

  // TRANSPORTS EN COMMUNS
  int _TCcounter = 0;

  void _incrementTCCounter() {
    setState(() {
      string++;
    });
  }

  void _decrementTCCounter() {
    setState(() {
      if (_TCcounter != 0) {
        _TCcounter--;
      }
    });
  }

  // MOTOS
  int _Motocounter = 0;

  void _incrementMotoCounter() {
    setState(() {
      _Motocounter++;
    });
  }

  void _decrementMotoCounter() {
    setState(() {
      if (_Motocounter != 0) {
        _Motocounter--;
      }
    });
  }

  // VELOS
  int _Velocounter = 0;

  void _incrementVeloCounter() {
    setState(() {
      _Velocounter++;
    });
  }

  void _decrementVeloCounter() {
    setState(() {
      if (_Velocounter != 0) {
        _Velocounter--;
      }
    });
  }

  // PIETONS 1 ->
  int _Pieton1counter = 0;

  void _incrementPieton1Counter() {
    setState(() {
      _Pieton1counter++;
    });
  }

  void _decrementPieton1Counter() {
    setState(() {
      if (_Pieton1counter != 0) {
        _Pieton1counter--;
      }
    });
  }

  // PIETONS 2 <-
  int _Pieton2counter = 0;

  void _incrementPieton2Counter() {
    setState(() {
      _Pieton2counter++;
    });
  }

  void _decrementPieton2Counter() {
    setState(() {
      if (_Pieton2counter != 0) {
        _Pieton2counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final data = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        title: Text(
          'COMPTEUR',
          style: new TextStyle(
            fontSize: data.size.height / 18,
            color: Colors.white24,
          ),
        ),
      ),
      body: ListView(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.directions_car,
                size: data.size.height / 15, color: Colors.deepOrange),
            Text('$_voiturecounter',
                style: new TextStyle(
                  color: Colors.deepOrange,
                  fontSize: data.size.height / 15,
                )),
            IconButton(
              onPressed: _decrementCounter,
              iconSize: data.size.height / 15,
              icon: new Icon(
                Icons.remove_circle,
                color: Colors.deepOrange,
              ),
            ),
            IconButton(
              onPressed: _incrementCounter,
              iconSize: data.size.height / 15,
              icon: new Icon(Icons.add_circle, color: Colors.deepOrange),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.airport_shuttle,
                size: data.size.height / 15, color: Colors.deepOrange),
            Text('$_vuLcounter',
                style: new TextStyle(
                  color: Colors.deepOrange,
                  fontSize: data.size.height / 15,
                )),
            IconButton(
              onPressed: _decrementVlCounter,
              iconSize: data.size.height / 15,
              icon: new Icon(
                Icons.remove_circle,
                color: Colors.deepOrange,
              ),
            ),
            IconButton(
              onPressed: _incrementVlCounter,
              iconSize: data.size.height / 15,
              icon: new Icon(Icons.add_circle, color: Colors.deepOrange),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.local_shipping,
                size: data.size.height / 15, color: Colors.deepOrange),
            Text('$_PLcounter',
                style: new TextStyle(
                  color: Colors.deepOrange,
                  fontSize: data.size.height / 15,
                )),
            IconButton(
              onPressed: _decrementPlCounter,
              iconSize: data.size.height / 15,
              icon: new Icon(
                Icons.remove_circle,
                color: Colors.deepOrange,
              ),
            ),
            IconButton(
              onPressed: _incrementPlCounter,
              iconSize: data.size.height / 15,
              icon: new Icon(Icons.add_circle, color: Colors.deepOrange),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.directions_bus,
                size: data.size.height / 15, color: Colors.deepOrange),
            Text('$_TCcounter',
                style: new TextStyle(
                  color: Colors.deepOrange,
                  fontSize: data.size.height / 15,
                )),
            IconButton(
              onPressed: _decrementTCCounter,
              iconSize: data.size.height / 15,
              icon: new Icon(
                Icons.remove_circle,
                color: Colors.deepOrange,
              ),
            ),
            IconButton(
              onPressed: _incrementTCCounter,
              iconSize: data.size.height / 15,
              icon: new Icon(Icons.add_circle, color: Colors.deepOrange),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.motorcycle,
                size: data.size.height / 15, color: Colors.deepOrange),
            Text('$_Motocounter',
                style: new TextStyle(
                  color: Colors.deepOrange,
                  fontSize: data.size.height / 15,
                )),
            IconButton(
              onPressed: _decrementMotoCounter,
              iconSize: data.size.height / 15,
              icon: new Icon(
                Icons.remove_circle,
                color: Colors.deepOrange,
              ),
            ),
            IconButton(
              onPressed: _incrementMotoCounter,
              iconSize: data.size.height / 15,
              icon: new Icon(Icons.add_circle, color: Colors.deepOrange),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.directions_bike,
                size: data.size.height / 15, color: Colors.deepOrange),
            Text('$_Velocounter',
                style: new TextStyle(
                  color: Colors.deepOrange,
                  fontSize: data.size.height / 15,
                )),
            IconButton(
              onPressed: _decrementVeloCounter,
              iconSize: data.size.height / 15,
              icon: new Icon(
                Icons.remove_circle,
                color: Colors.deepOrange,
              ),
            ),
            IconButton(
              onPressed: _incrementVeloCounter,
              iconSize: data.size.height / 15,
              icon: new Icon(Icons.add_circle, color: Colors.deepOrange),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(
                  Icons.accessibility,
                  size: data.size.height / 22,
                  color: Colors.deepOrange,
                ),
                Icon(Icons.arrow_forward,
                    size: data.size.height / 15, color: Colors.deepOrange),
              ],
            ),
            Text('$_Pieton1counter',
                style: new TextStyle(
                  color: Colors.deepOrange,
                  fontSize: data.size.height / 15,
                )),
            IconButton(
              onPressed: _decrementPieton1Counter,
              iconSize: data.size.height / 15,
              icon: new Icon(
                Icons.remove_circle,
                color: Colors.deepOrange,
              ),
            ),
            IconButton(
              onPressed: _incrementPieton1Counter,
              iconSize: data.size.height / 15,
              icon: new Icon(Icons.add_circle, color: Colors.deepOrange),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(
                  Icons.accessibility,
                  size: data.size.height / 22,
                  color: Colors.deepOrange,
                ),
                Icon(Icons.arrow_back,
                    size: data.size.height / 15, color: Colors.deepOrange),
              ],
            ),
            Text('$_Pieton2counter',
                style: new TextStyle(
                  color: Colors.deepOrange,
                  fontSize: data.size.height / 15,
                )),
            IconButton(
              onPressed: _decrementPieton2Counter,
              iconSize: data.size.height / 15,
              icon: new Icon(
                Icons.remove_circle,
                color: Colors.deepOrange,
              ),
            ),
            IconButton(
              onPressed: _incrementPieton2Counter,
              iconSize: data.size.height / 15,
              icon: new Icon(Icons.add_circle, color: Colors.deepOrange),
            ),
          ],
        ),
      ]),
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.grey[900], items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.timer,
            color: Colors.deepOrange,
            size: data.size.height / 24,
          ),
          title: Text(
            'Chronomètre',
            style: new TextStyle(
                color: Colors.white, fontSize: data.size.height / 35),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.cloud_download,
            color: Colors.deepOrange,
            size: data.size.height / 24,
          ),
          title: Text(
            'Sauvegarder',
            style: new TextStyle(
                color: Colors.white, fontSize: data.size.height / 35),
          ),
        ),
      ]),
    );
  }
}
