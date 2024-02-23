import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const CryptoCurrenciesListApp());
}

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Currencies List',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromARGB(255, 31, 31, 31),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow.shade700),
          useMaterial3: true,
          dividerColor: Colors.white30,
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 31, 31, 31),
              titleTextStyle: TextStyle(color: Colors.white60,fontSize:20, fontWeight: FontWeight.w800)),
          listTileTheme: ListTileThemeData(iconColor: Colors.white54),
          textTheme: TextTheme(
            bodyMedium: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 25,
            ),
            labelSmall: TextStyle(
                color: Colors.white38.withOpacity(0.6),
                fontWeight: FontWeight.w800,
                fontSize: 14),
          )),
      home: const MyHomePage(title: 'Crypto Currencies List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // выносим тему
    final theme = Theme.of(context);

    return Scaffold(
      // цвет
      // backgroundColor: Colors.black,
      appBar: AppBar(
        // иконки
        // leading: Icon(Icons.arrow_back),

        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.

        title: Text(widget.title),
      ),
      body:
          // ListView.separated(разделитель контента)
          ListView.separated(
              separatorBuilder: (context, index) => Divider(),
              itemCount: 10,
              itemBuilder: ((context, index) => ListTile(
                    leading: SvgPicture.asset(
                      "assets/svg/bitcoin.svg",
                      height: 30,
                      width: 30,
                    ),
                    title: Text('Bitcoin', style: theme.textTheme.bodyMedium),
                    subtitle:
                        Text('20000\$', style: theme.textTheme.labelSmall),
                    trailing: Icon(Icons.arrow_back),
                  ))),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
