import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo/bloc/auth_bloc/auth_bloc.dart';
import 'package:todo/firebase_options.dart';
import 'package:todo/services/authentication_service.dart';
import 'package:todo/views/screens/manege_page.dart';
import 'package:todo/views/screens/onbording/main_screen.dart';
import 'package:todo/views/screens/onbording/onbodring.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MainApp());
}

// ignore: must_be_immutable
class MainApp extends StatelessWidget {
  AuthenticationService authenticationService = AuthenticationService();
  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<AuthBloc>(
              create: (context) => AuthBloc(authenticationService),
            )
          ],
          child: MaterialApp(
            theme: ThemeData(
              primaryTextTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.white),
                bodyMedium: TextStyle(color: Colors.white),
                bodySmall: TextStyle(color: Colors.white),
                headlineLarge: TextStyle(color: Colors.white),
                headlineMedium: TextStyle(color: Colors.white),
                headlineSmall: TextStyle(color: Colors.white),
                titleLarge: TextStyle(color: Colors.white),
                titleMedium: TextStyle(color: Colors.white),
                titleSmall: TextStyle(color: Colors.white),
                labelLarge: TextStyle(color: Colors.white),
                labelMedium: TextStyle(color: Colors.white),
                labelSmall: TextStyle(color: Colors.white),
              ),
              appBarTheme: AppBarTheme(
                  centerTitle: true,
                  titleTextStyle:
                      TextStyle(color: Colors.white, fontSize: 20.sp),
                  backgroundColor: const Color(0xff121212),
                  iconTheme: const IconThemeData(color: Colors.white)),
              scaffoldBackgroundColor: const Color(0xff121212),
              textTheme: const TextTheme(
                bodyLarge: TextStyle(color: Colors.white),
                bodyMedium: TextStyle(color: Colors.white),
                bodySmall: TextStyle(color: Colors.white),
                headlineLarge: TextStyle(color: Colors.white),
                headlineMedium: TextStyle(color: Colors.white),
                headlineSmall: TextStyle(color: Colors.white),
                titleLarge: TextStyle(color: Colors.white),
                titleMedium: TextStyle(color: Colors.white),
                titleSmall: TextStyle(color: Colors.white),
                labelLarge: TextStyle(color: Colors.white),
                labelMedium: TextStyle(color: Colors.white),
                labelSmall: TextStyle(color: Colors.white),
              ),
              primaryColor: const Color(0xff8875FF),
            ),
            home: FirebaseAuth.instance.currentUser == null
                ? Onbodring()
                : ManagePage(),
          ),
        );
      },
    );
  }
}
