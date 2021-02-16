import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizScreen extends StatefulWidget{
    @override
    _QuizScreenState createState ()=> _QuizScreenState();
}
class _QuizScreenState extends State<QuizScreen>{
    @override
    Widget build(BuildContext context){
        final ButtonStyle responderButtonStyle = TextButton.styleFrom(
            primary: Colors.white,
            backgroundColor: Color(0XFFDA0175),
            minimumSize: Size(200, 39),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(18.0)),
            )
        );
        return Scaffold(
            appBar: AppBar(
                automaticallyImplyLeading: false,
                title: Center(
                    child: Image(
                        image: AssetImage('lib/assets/iconbar.png'),
                    ),
                ),
                backgroundColor: Color(0XFF374952),
            ),
            body: Column(
                children:[
                    Container(
                        margin: EdgeInsets.fromLTRB(32,56,32,0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                                Text(
                                    'Pergunta 1:',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0XFF4C4C4C),
                                    ),
                                ),
                                Text(
                                    'O que é Flutter?',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        height: 2.0,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0XFF263238),
                                    ),
                                ), 
                            ],	
                        ),
                    ),
                    Expanded(
                        child: ListView(

                        ),
                    ),
                    TextButton(
                        style: responderButtonStyle,
                        onPressed: () {
                            print('responder');
                        },
                        child: Text(
                            'Responder',
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                height: 1.7,
                                fontWeight: FontWeight.w600,
                            )
                        ),
                    ), 
                ],	
            ),
        );
    }
}