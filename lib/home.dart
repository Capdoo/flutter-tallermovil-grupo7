import 'package:flutter/material.dart';
import 'custom_icons_icons.dart';

class Refuges extends StatefulWidget {
  const Refuges({Key? key}) : super(key: key);

  @override
  _RefugesState createState() => _RefugesState();
}

class _RefugesState extends State<Refuges> {
  int _selectedIndex = 2;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Mascotas perdidas',
      style: optionStyle,
    ),
    Text(
      'Index 1: Ver mascotas',
      style: optionStyle,
    ),
    Text(
      'Index 2: Mis refugios',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        leading: const Icon(Icons.menu),
        title:
            const Text('Mis refugios', style: TextStyle(color: Colors.black)),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.search),
          )
        ],
        backgroundColor: const Color(0xFFF5F5F5),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff03dac6),
        foregroundColor: Colors.black,
        onPressed: () {
          // Respond to button press
        },
        child: const Icon(Icons.add),
      ),
      body: SizedBox(
          child: Wrap(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.all(20.0),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset('refuges/santuario_felicidad.jpg'),
                ListTile(
                    title: const Text('Santuario Felicidad',
                        style: TextStyle(fontSize: 20)),
                    subtitle: Text(
                      '\nCalle Los Nogales 234 \n\nLa victoria \n\n(+51) 998 123 462',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ))
              ],
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.all(20.0),
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                Image.asset('refuges/refugio_chavelines.jpg'),
                ListTile(
                    title: const Text('\nRefugio Chavelines',
                        style: TextStyle(fontSize: 20)),
                    subtitle: Text(
                      '\nCalle Los Nogales 234 \n\nLa victoria \n\n(+51) 998 123 462',
                      style: TextStyle(color: Colors.black.withOpacity(0.6)),
                    ))
              ],
            ),
          ),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.sound_detection_dog_barking_48px),
              label: 'Mascotas perdidas'),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.pets), label: 'Ver mascotas'),
          BottomNavigationBarItem(
              icon: Icon(CustomIcons.village), label: 'Mis refugios')
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF6200EE),
        onTap: _onItemTapped,
      ),
    );
  }
}
