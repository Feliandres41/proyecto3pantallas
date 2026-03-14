
import 'package:proyecto/pantallas/about_screen.dart';
import 'package:proyecto/pantallas/generation_code_screen.dart';
import 'package:proyecto/pantallas/identification_screen.dart';
import 'package:proyecto/pantallas/splash_screen.dart';
import 'package:proyecto/pantallas/verification_screen.dart';

class Rutas {
  static final rutaInicial = '/';
  static final rutasBarril= {
    '/':(context)=>SplashScreen(),
    '/aboutScreen':(context)=>AboutScreen(),
    '/generationCode':(context)=>GenerationCodeScreen(),
    '/identification':(context)=>IdentificationScreen(),
    '/verification':(context)=>VerificationScreen()
    
  };
}