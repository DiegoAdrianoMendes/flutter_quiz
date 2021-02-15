import 'package:flutter/material.dart';
import 'package:flutter_quiz/initial_screen.dart';

void main() => (runApp(Quiz()));

class Quiz extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        return MaterialApp(
            home:InitialScreen(),
        );
    }
}