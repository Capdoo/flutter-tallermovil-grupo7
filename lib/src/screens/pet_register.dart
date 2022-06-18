import "package:flutter/material.dart";
import 'package:flutter_tallermovil_grupo7/src/widgets/bottom_navigation.dart';
import 'package:flutter_tallermovil_grupo7/src/widgets/custom_card.dart';
import 'package:flutter_tallermovil_grupo7/src/widgets/space.dart';
import 'package:flutter_tallermovil_grupo7/src/widgets/text_input.dart';
import 'package:flutter_tallermovil_grupo7/src/mixins/validation_mixins.dart';


class PetRegister extends StatefulWidget{
  const PetRegister({Key? key}) : super(key:key);
  @override
  _PetRegisterState createState() =>  _PetRegisterState();
}

class _PetRegisterState extends State<PetRegister> with ValidationMixins{
  int _selectedIndex = 0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  //Para toda la screen
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Mascotas perdidas',
      style: optionStyle
    ),
    Text(
      'Index 1: Ver mascotas',
      style: optionStyle
    ),
    Text(
      'Index2: Mis Refugios',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index){
    setState( (){
      _selectedIndex = index;
    });
  }

  Drawer getDrawer(BuildContext context){
    DrawerHeader header = const DrawerHeader(child: Text("Settings"));

    AboutListTile about = const AboutListTile(
      applicationIcon: Icon(Icons.favorite),
      icon: Icon(Icons.info),
      child: Text("Acerca de PetsWorld"));

    ListTile getItem(Icon icon, String descripcion, String route) {
      return ListTile(
        leading: icon,
        title: Text(descripcion),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      );
    }

    ListView getList(){
      return ListView(
        children: [
          header,
          getItem(const Icon(Icons.home), "Home", "/"),
          about
        ],
      );
    }
    return Drawer(child: getList());
  }

  Widget _submitButton() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          _formKey.currentState?.save();
          Navigator.pushNamed(context, "/sign-up-app");
        }
      },
      style: ElevatedButton.styleFrom(
          primary: const Color(0xFF6200EE),
          fixedSize: const Size(350, 36),
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: const Text("SIGUIENTE"),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF5F5F5),
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text("Registrar Mascota", style: TextStyle(color: Colors.black)),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              // openSearchPage(context);
            },
          ),
        ],
      ),
      drawer: getDrawer(context),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff03dac6),
        foregroundColor: Colors.black,
        onPressed: (){},
        child: const Icon(Icons.add),
      ),

      body: SingleChildScrollView(
          child: Column(children: [
            addVerticalSpace(25),
            Padding(padding: const EdgeInsets.all(15),
              child: const Text("Registra una mascota para que se pueda activar su búsqueda por la comunidad.",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),

            addVerticalSpace(15),
            Padding(padding: const EdgeInsets.all(15),
                child: const Text("Recuerde que mientras más específica sea su descripción, más eficiente será la búsqueda.",
                    style: TextStyle(fontSize: 16))),

            addVerticalSpace(15),
            Padding(
                padding: const EdgeInsets.all(15),
                child: Form(
                    key: _formKey,
                    child: Column(children: [
                      TextInput(

                          hintText: "Nombre",
                          validator: validateLastName,
                          onSaved: (value) {
                            print(value);
                          },

                          ),
                      addVerticalSpace(30),
                      TextInput(
                          hintText: "Sexo",
                          validator: validateLastName,
                          onSaved: (value) {
                            print(value);
                          }),
                      addVerticalSpace(30),
                      TextInput(
                          hintText: "Fecha de nacimiento",
                          validator: validateDNI,
                          keyboardType: TextInputType.number,
                          onSaved: (value) {
                            print(value);
                          }),
                      addVerticalSpace(30),
                      TextInput(
                          hintText: "Especie",
                          validator: validateAddress,
                          onSaved: (value) {
                            print(value);
                          }),
                      addVerticalSpace(30),
                      TextInput(
                          hintText: "Raza",
                          keyboardType: TextInputType.number,
                          validator: validatePhone,
                          onSaved: (value) {
                            print(value);
                          }),
                      addVerticalSpace(30),
                      TextInput(
                          hintText: "Color",
                          keyboardType: TextInputType.number,
                          validator: validatePhone,
                          onSaved: (value) {
                            print(value);
                          }),
                      addVerticalSpace(30),


                      _submitButton()
                    ])))
          ])),

        //bottomNavigationBar: CustomBottomNavigationBar(selectedIndex: _selectedIndex, onItemTapped: _onItemTapped)


      );

  }



}


