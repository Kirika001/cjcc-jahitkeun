import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jahitkeeun/binding/global_bindings.dart';
import 'package:jahitkeeun/const/color.dart';
import 'package:jahitkeeun/ui/auth/login/login_screen.dart';
import 'package:jahitkeeun/ui/auth/lupapassword/lupapassword_screen.dart';
import 'package:jahitkeeun/ui/auth/register/register_screen.dart';
import 'package:jahitkeeun/ui/boarding/onboarding/onboarding_screen.dart';
import 'package:jahitkeeun/ui/boarding/splash/splash_screen.dart';
import 'package:jahitkeeun/ui/main/tailor_main_screen.dart';
import 'package:jahitkeeun/ui/main/user_main_screen.dart';
import 'package:jahitkeeun/ui/user/profil/alamat/edit_alamat_screen.dart';
import 'package:jahitkeeun/ui/user/profil/alamat/list_alamat_screen.dart';
import 'package:jahitkeeun/ui/user/profil/editprofil/edit_profil_screen.dart';
import 'package:jahitkeeun/ui/user/profil/gantipassword/gantipassword_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  GlobalBindings().dependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jahitkeuun',
      theme: ThemeData(
        backgroundColor: lightColor,
        colorScheme: ThemeData().colorScheme.copyWith(primary: mainColor),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          contentPadding: EdgeInsets.only(left: 10),
          fillColor: whiteColor,
          border: OutlineInputBorder(
            gapPadding: 0,
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              width: 2,
              color: darkColor
            )
          ),
        )
      ),
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/onboarding', page: ()=> const OnboardingScreen()),
        GetPage(name: '/login', page: () => const LoginScreen()),
        GetPage(name: '/register', page: () => const RegisterScreen()),
        GetPage(name: '/lupaPassword', page: () => const LupaPasswordScreen()),
        GetPage(name: '/userDashboard', page: ()=> const UserMainScreen()),
        GetPage(name: '/editProfil', page: ()=> const EditProfilScreen()),
        GetPage(name: '/alamat', page: ()=> const AlamatScreen()),
        GetPage(name: '/editAlamat', page: ()=> const EditAlamatScreen()),
        GetPage(name: '/gantiPassword', page: ()=> const GantiPasswordScreen()),
        GetPage(name: '/tailorDashboard', page: ()=> const TailorMainScreen()),
      ],
      initialRoute: '/',
    );
  }
}

