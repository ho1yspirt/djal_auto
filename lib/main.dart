import 'package:djal_auto/screens/user_screens/account_screen.dart';
import 'package:djal_auto/screens/exam_papers_screens/exam_papers_screen.dart';
import 'package:djal_auto/screens/login_screens/login_screen.dart';
import 'package:djal_auto/screens/root_screen.dart';
import 'package:djal_auto/screens/user_screens/create_user_screen.dart';
import 'package:djal_auto/utils/constans.dart';
import 'package:djal_auto/utils/themes.dart';
import 'package:djal_auto/widget_tree.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'generated/l10n.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: kBackgroundColor,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: kSurfaceColor,
        systemStatusBarContrastEnforced: false,
      ),
    );
    final baseTheme = kDarkTheme();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: baseTheme.copyWith(
        textTheme: GoogleFonts.montserratTextTheme(baseTheme.textTheme),
      ),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      initialRoute: 'login_screen',
      // routes: {
      //   LoginScreen.id: (context) => const LoginScreen(),
      //   RootScreen.id: (context) => RootScreen(),
      //   ExamPapersScreen.id: (context) => const ExamPapersScreen(),
      //   AccountScreen.id: (context) => const AccountScreen(),
      //   CreateUserScreen.id: (context) => const CreateUserScreen(),
      // },
      home: const WidgetTree(),
    );
  }
}
