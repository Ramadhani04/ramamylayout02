import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Produk Laptop',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Produk Laptop'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Text(title),
        ),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.only(
                    top: 6,
                  ),
                  child: ListTile(
                      leading: Image.network("https://www.static-src.com/wcsstore/Indraprastha/images/catalog/medium//86/MTA-23080215/asus_asus_expertbook_p1411pcma_bv255t_intel-_celeron-_n4020_4gb_ram_256gbssd_14-hd_win_10__full03_ipwv46qk.jpg"),
                      title: Text(
                        "Laptop Asus Core i7",
                        maxLines: 5,
                        overflow: TextOverflow.ellipsis,
                      ),
                      subtitle: Text(
                        "Laptop Asus Core i7",
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                      )));
            }));
  }
}
