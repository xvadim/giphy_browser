import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/injection/injection.dart';

import 'presentation/gif_details.dart';
import 'presentation/gifs_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  configureInjection();

  runApp(const GiphyBrowserApp());
}

class GiphyBrowserApp extends StatelessWidget {
  const GiphyBrowserApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Giphy browser',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (_) => const GifsPage(),
        '/details': (_) => const GifDetails(),
      },
    );
  }
}
