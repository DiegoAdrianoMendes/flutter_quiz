import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_quiz/question.dart';

class QuizScreen extends StatefulWidget{
    @override
    _QuizScreenState createState ()=> _QuizScreenState();
}
class _QuizScreenState extends State<QuizScreen>{
    int answer = 0;
    int score = 0;
    int index = 0;
    List<Question> questionsList = Question.getQuestionsList();
    
    void verifyResponse() {
        if(answer == questionsList[index].answer){
            score = score + 1;
        }
    }

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
                                    questionsList[index].questionText,
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
                            children:[
                                Container(
                                    margin: EdgeInsets.fromLTRB(32,10,32,10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.withOpacity(0.15),
                                                spreadRadius: 2,
                                                blurRadius: 3,
                                                offset: Offset(1,3),
                                            )
                                        ],
                                        border: Border.all(
                                            color: answer == 1?Color(0XFFE83B86):Colors.transparent,
                                            width: 1,
                                        ),
                                    ),
                                    child: RadioListTile(
                                        activeColor: Color(0XFFE83B86),
                                        value: 1,
                                        groupValue: answer,
                                        title: Text(
                                            questionsList[index].opition1,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0XFF374952),
                                                height: 2,
                                            ),
                                        ),
                                        onChanged: (int value){
                                            setState(() {
                                                answer = value;                                 
                                            });
                                        },
                                    ),
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(32,10,32,10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.withOpacity(0.15),
                                                spreadRadius: 2,
                                                blurRadius: 3,
                                                offset: Offset(1,3),
                                            )
                                        ],
                                        border: Border.all(
                                            color: answer == 2?Color(0XFFE83B86):Colors.transparent,
                                            width: 1,
                                        ),
                                    ),
                                    child: RadioListTile(
                                        activeColor: Color(0XFFE83B86),
                                        value: 2,
                                        groupValue: answer,
                                        title: Text(
                                            questionsList[index].opition2,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0XFF374952),
                                                height: 2,
                                            ),
                                        ),
                                        onChanged: (int value){
                                            setState(() {
                                                answer = value;                                 
                                            });
                                        },
                                    ),
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(32,10,32,10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.withOpacity(0.15),
                                                spreadRadius: 2,
                                                blurRadius: 3,
                                                offset: Offset(1,3),
                                            )
                                        ],
                                        border: Border.all(
                                            color: answer == 3?Color(0XFFE83B86):Colors.transparent,
                                            width: 1,
                                        ),
                                    ),
                                    child: RadioListTile(
                                        activeColor: Color(0XFFE83B86),
                                        value: 3,
                                        groupValue: answer,
                                        title: Text(
                                            questionsList[index].opition3,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0XFF374952),
                                                height: 2,
                                            ),
                                        ),
                                        onChanged: (int value){
                                            setState(() {
                                                answer = value;                                 
                                            });
                                        },
                                    ),
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(32,10,32,10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.withOpacity(0.15),
                                                spreadRadius: 2,
                                                blurRadius: 3,
                                                offset: Offset(1,3),
                                            )
                                        ],
                                        border: Border.all(
                                            color: answer == 4?Color(0XFFE83B86):Colors.transparent,
                                            width: 1,
                                        ),
                                    ),
                                    child: RadioListTile(
                                        activeColor: Color(0XFFE83B86),
                                        value: 4,
                                        groupValue: answer,
                                        title: Text(
                                            questionsList[index].opition4,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0XFF374952),
                                                height: 2,
                                            ),
                                        ),
                                        onChanged: (int value){
                                            setState(() {
                                                answer = value;                                 
                                            });
                                        },
                                    ),
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(32,10,32,10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.withOpacity(0.15),
                                                spreadRadius: 2,
                                                blurRadius: 3,
                                                offset: Offset(1,3),
                                            )
                                        ],
                                        border: Border.all(
                                            color: answer == 5?Color(0XFFE83B86):Colors.transparent,
                                            width: 1,
                                        ),
                                    ),
                                    child: RadioListTile(
                                        activeColor: Color(0XFFE83B86),
                                        value: 5,
                                        groupValue: answer,
                                        title: Text(
                                            questionsList[index].opition5,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0XFF374952),
                                                height: 2,
                                            ),
                                        ),
                                        onChanged: (int value){
                                            setState(() {
                                                answer = value;                                 
                                            });
                                        },
                                    ),
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(32,10,32,10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.withOpacity(0.15),
                                                spreadRadius: 2,
                                                blurRadius: 3,
                                                offset: Offset(1,3),
                                            )
                                        ],
                                        border: Border.all(
                                            color: answer == 6?Color(0XFFE83B86):Colors.transparent,
                                            width: 1,
                                        ),
                                    ),
                                    child: RadioListTile(
                                        activeColor: Color(0XFFE83B86),
                                        value: 6,
                                        groupValue: answer,
                                        title: Text(
                                            questionsList[index].opition6,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0XFF374952),
                                                height: 2,
                                            ),
                                        ),
                                        onChanged: (int value){
                                            setState(() {
                                                answer = value;                                 
                                            });
                                        },
                                    ),
                                ),
                                Container(
                                    margin: EdgeInsets.fromLTRB(32,10,32,10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.withOpacity(0.15),
                                                spreadRadius: 2,
                                                blurRadius: 3,
                                                offset: Offset(1,3),
                                            )
                                        ],
                                        border: Border.all(
                                            color: answer == 7?Color(0XFFE83B86):Colors.transparent,
                                            width: 1,
                                        ),
                                    ),
                                    child: RadioListTile(
                                        activeColor: Color(0XFFE83B86),
                                        value: 7,
                                        groupValue: answer,
                                        title: Text(
                                            questionsList[index].opition7,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0XFF374952),
                                                height: 2,
                                            ),
                                        ),
                                        onChanged: (int value){
                                            setState(() {
                                                answer = value;                          
                                            });
                                        },
                                    ),
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
                                    if(index < questionsList.length - 1){
                                        setState(() {
                                            verifyResponse();
                                            index = index + 1;
                                            answer = 0;
                                        });
                                    }else{
                                        setState(() {
                                            /* Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => ScoreScreen()),
                                            ); */
                                        });
                                    }
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
                        ) 
                    ),
                    
                ],	
            ),
        );
    }
}