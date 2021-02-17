import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_quiz/initial_screen.dart';


class ScoreScreen extends StatelessWidget{
    int result;
    int maximun;

    ScoreScreen({Key key, @required this.result,@required this.maximun}):super(key: key);
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
                backgroundColor: Color(0XFF374952),
                title: Center(
                    child:Image(
                        image: AssetImage('lib/assets/iconbar.png'),
                    ),
                ),
            ),
            body: Column(
                children: [
                    Expanded(
                        child: Column(
                            children: [
                                SizedBox(
                                    height: 113,
                                ),
                                Text(
                                    'VOCÊ ACERTOU :',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        height: 1.5,
                                        fontWeight: FontWeight.w600,
                                    )
                                ),
                                SizedBox(
                                    height: 60,
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.baseline,
                                    textBaseline: TextBaseline.alphabetic,
                                    children: [
                                        Text(
                                            '$result',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 80,
                                                fontWeight: FontWeight.w800,
                                                color: Color(0XFFE83B86),
                                            ),
                                        ),
                                        Text(
                                            '/ $maximun',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600,
                                                color: Color(0XFF263238),
                                            ),
                                        ),
                                    ],
                                ),
                            ],
                        ),
                    ),
                    Container(
                        height: 87.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.25),
                                    spreadRadius: 3,
                                    blurRadius: 5,
                                    offset: Offset(0, -1),
                                ),
                            ],
                        ),
                        child: Center(
                            child: TextButton(
                                style: responderButtonStyle,
                                onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => InitialScreen()),
                                    ); 
                                },
                                child: Text(
                                    'Jogar Novamente',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        height: 1.7,
                                        fontWeight: FontWeight.w600,
                                    )
                                ),
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}	