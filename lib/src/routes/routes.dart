import 'package:flutter/material.dart';
import 'package:flutter_tallermovil_grupo7/src/screens/login.dart';
import 'package:flutter_tallermovil_grupo7/src/screens/home.dart';
import 'package:flutter_tallermovil_grupo7/src/screens/my_pets.dart';
import 'package:flutter_tallermovil_grupo7/src/screens/my_refugees.dart';
import 'package:flutter_tallermovil_grupo7/src/screens/pet_details.dart';
import 'package:flutter_tallermovil_grupo7/src/screens/sign_up.dart';
import 'package:flutter_tallermovil_grupo7/src/screens/sign_upp_app.dart';
import 'package:flutter_tallermovil_grupo7/src/screens/landing_page.dart';
import 'package:flutter_tallermovil_grupo7/src/screens/report_pet.dart';

import '../screens/pet_register.dart';


const initialRoute = "/landing";

final Map<String, WidgetBuilder> routes = {
  '/landing': (context) => const Landing(),
  '/sign-up': (context) => const SignUp(),
  '/sign-up-app': (context) => const SignUpApp(),
  '/login': (context) => const Login(),
  '/my-refuges': (context) => const Refuges(),
  '/my-pets': (context) => const MyPets(),
  '/': (context) => const Home(),
  '/pet-details': (context) => const PetDetails(),
  '/pet-register': (context) => const PetRegister()
};
