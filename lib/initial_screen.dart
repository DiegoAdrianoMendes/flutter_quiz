import 'package:flutter/material.dart';
import 'package:flutter_quiz/quiz_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialScreen extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        final ButtonStyle continuarButtonStyle = TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Color(0XFFDA0175),
            minimumSize: Size(220, 39),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(18.0)),
            ),
        );
        
        return Material(
            color: Colors.white,
            child: Column(
                children:[
                    SizedBox(
                        height: 167.0,
                    ),
                    Image(
                        image: AssetImage('lib/assets/logo.png'),
                    ),
                    SizedBox(
                        height:24.0,
                    ),
                    Text(
                        'Quiz \n Academy',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                            color: Color(0XFF374952),
                        ),
                    ),
                    SizedBox(
                        height:88.0,
                    ),
                    TextButton(
                        style: continuarButtonStyle,
                        onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => QuizScreen()),
                            );
                        },
                        child:Text(
                            'Continuar',
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                            ),
                        ),
                    ),
                ],
            ),
        ); 
    }
}