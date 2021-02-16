class Question {
    String questionText;
    String opition1;
    String opition2;
    String opition3;
    String opition4;
    String opition5;
    String opition6;
    String opition7;
    int answer;

    Question(
        this.questionText,
        this.opition1,
        this.opition2,
        this.opition3,
        this.opition4,
        this.opition5,
        this.opition6,
        this.opition7,
        this.answer
    );

    static List<Question> getQuestionsList(){
        List<Question> question = [];

        question.add(
            Question(
                'O que é Flutter ?',
                'Um novo smartphone.',
                'Um editor de Código da Google',
                'Uma linguagem de programação orientada o objetos com cara de Java e corpo de C, muito fácil de se aprender.',
                'Um serviço do Google.',
                'Um novo SO.',
                'Um Jogo desenvolvido pela Google',
                'Um SDK de desenvolvimento de multiplataforma',
                7
            )
        );

        question.add(
            Question(
                'Qual linguagem o flutter usa ?',
                'Cobol.',
                'Java.',
                'Julia.',
                'Python.',
                'Dart.',
                'Go.',
                'Fortran',
                5
            )
        );

        question.add(
            Question(
                'Sobre o desenvolvimento de aplicações móveis, assinale a alternativa correta.',
                'O React.js é um framework de código aberto usado para desenvolver aplicativos para Android, iOS e UWP.',
                'Ionic é um SDK de software livre completo para desenvolvimento de aplicativos móveis híbridos escrito em Java.',
                'Flutter é um SDK de código aberto criado pelo Google para o desenvolvimento de aplicativos para dispositivos móveis utilizado para desenvolver aplicativos para Android e iOS.',
                'Swift é um framework de desenvolvimento de aplicativos móveis lançado como código aberto com o nome de Apache Cordova.',
                'O Vue Native é um framework para criar aplicativos móveis nativos cross-platform usando a linguagem de programação Dart.',
                'O Kotlin é um framework criado pela JetBrains para desenvolvimento de aplicativos híbridos.',
                'Python é uma linguagem de baixo nível, que pode ser usada para desenvolvimento mobile.',
                3
            )
        );

        return question;
    }
}