import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/todo_list.dart';
import 'package:provider_example/screens/home_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => TodoList() ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          theme: ThemeData(
            bottomNavigationBarTheme: BottomNavigationBarThemeData(

            )
          ),
          home:HomePage(),
      ),
    );
  }
}


