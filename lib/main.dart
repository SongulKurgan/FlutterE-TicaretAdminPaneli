import 'package:ecommerce_flutter_admin1/constans/theme_data.dart';
import 'package:ecommerce_flutter_admin1/provider/product_provider.dart';
import 'package:ecommerce_flutter_admin1/provider/theme_provider.dart';
import 'package:ecommerce_flutter_admin1/screens/DashboardScreen.dart';
import 'package:ecommerce_flutter_admin1/screens/editorUploadProduct.dart';
import 'package:ecommerce_flutter_admin1/screens/search_screen.dart';
import 'package:ecommerce_flutter_admin1/widget/order/order_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<FirebaseApp>
    (future: Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyCJccvULX11P639b63tgUdyQOlr3tzduoM',
        appId: '1:183304837148:android:6c3ae0f8a148f6544f67d9',
        messagingSenderId: '183304837148',
        projectId: 'ecommerce-bitirme-40020',
        storageBucket: 'ecommerce-bitirme-40020.appspot.com'
    )
    ),
    builder: (context, snapshot){
    if(snapshot.connectionState== ConnectionState.waiting){
    return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Scaffold(
    body: Center(
    child: CircularProgressIndicator(),
    ),
    )
    );
    }
    else if(snapshot.hasError){
    return  MaterialApp(
    debugShowCheckedModeBanner: false,
    home:Scaffold(
    body: Center(
    child: SelectableText(snapshot.error.toString()),
    ),
    )
    );

    }
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_){
        return ThemeProvider();
      }),
      ChangeNotifierProvider(create: (_){
        return ProductProvider();
      }),


    ],
        child: Consumer<ThemeProvider>(builder: (context, themeProvider, child){
          return MaterialApp(
            title: 'Songul Ap ',
            theme: Styles.themeData(isDarkTheme: themeProvider.getIsDarkTheme, context: context),

            //    home:const LoginScreen(),
            home:const DashboardScreen(),
            routes: {
              OrderScreen.routName: (context) => const OrderScreen(),
              SearchScreen.routName: (context) => const SearchScreen(),
              EditorUploadProductScreen.routName: (context) => const EditorUploadProductScreen(),
            },
          );


        }),

    );
    }
    );
  }
}


