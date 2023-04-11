import 'package:flutter/material.dart';
import 'package:post_api/screens/home/provider/homeProvider.dart';
import 'package:post_api/screens/home/view/home_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => homeProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => home_screen(),
        },
      ),
    ),
  );
}