import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_tallermovil_grupo7/src/screens/login.dart';
import 'package:flutter_tallermovil_grupo7/src/screens/home.dart';
import 'package:flutter_tallermovil_grupo7/src/screens/my_refugees.dart';
import 'package:flutter_tallermovil_grupo7/src/screens/sign_up.dart';
import 'package:flutter_tallermovil_grupo7/src/screens/sign_upp_app.dart';
import 'package:flutter_tallermovil_grupo7/src/screens/landing_page.dart';

import 'package:flutter_tallermovil_grupo7/src/screens/pet_register.dart';


const initialRoute = "/home";

final Map<String, WidgetBuilder> routes = {
  '/landing': (context) => const Landing(),
  '/sign-up': (context) => const SignUp(),
  '/sign-up-app': (context) => const SignUpApp(),
  '/login': (context) => const Login(),
  '/my-refuges': (context) => const Refuges(),
  '/home': (context) => const Home(),
  '/pet-register': (context) => const PetRegister()
};
