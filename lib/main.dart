import 'package:flutter/material.dart';
import 'package:flutter_quiz/initial_screen.dart';

void main() => (runApp(Quiz()));

class Quiz extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return MaterialApp(
            theme: ThemeData(
                unselectedWidgetColor: Color(0XFFE83B86),
            ),
            home:InitialScreen(),
        );
    }
}