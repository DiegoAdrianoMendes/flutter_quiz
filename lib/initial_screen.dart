import 'package:flutter/material.dart';

class InitialScreen extends StatelessWidget{
    @override
    Widget build(BuildContext context){
        final ButtonStyle continuarButtonStyle = TextButton.styleFrom(
            primary: Colors.white,
            onSurface: Colors.grey,
            backgroundColor: Color(0XFFDA0175),
            minimumSize: Size(220, 36),
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
                        height:40.0,
                    ),
                    Text(
                        'Quiz \n Academy',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize:32,
                            fontWeight: FontWeight.w800,
                            color: Color(0XFF374952),
                        ),
                    ),
                    SizedBox(
                        height:50.0,
                    ),
                    TextButton(
                        style: continuarButtonStyle,
                        onPressed: () {
                            
                        },
                        child:Text(
                            'Continuar',
                            style: TextStyle(fontSize: 14.0),
                        ),
                    ),
                ],
            ),
        ); 
    }
}