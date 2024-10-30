import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kardxpress_app/constant/constant.dart';
import 'package:kardxpress_app/server/ocr.dart';
import 'package:kardxpress_app/state_managment/bloc/OCRCubit/ocr_cubit.dart';
import 'package:kardxpress_app/state_managment/provider/language.dart';
import 'package:kardxpress_app/view/app_route.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'generated/l10n.dart';

bool? _seen;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferences prefs = await SharedPreferences.getInstance();
  _seen = prefs.getBool("intro");

  final lang = LanguageProvider();
  await lang.ReadLanguage();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageProvider()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => OcrCubit(OCRService()),
          ),
        ],
        child: MyApp(
          appRouter: AppRouter(),
        ),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return Consumer<LanguageProvider>(
      builder: (context, value, child) => MaterialApp(
        locale: Locale(value.language),

        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter.generate_route,
        initialRoute: _seen == true ? HomeScreen : IntroScreen,
        // home: Intro_Screen(),
      ),
    );
  }
}
