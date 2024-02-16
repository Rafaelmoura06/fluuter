import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int currentQuestionIndex = 0;
  int point = 0;
  String? selectedAnswer;
  bool? isCorrect;
  final List<Map<String, dynamic>> questions = [
    {
      'question':
          'Quanto tempo dura uma partida de futebol?',
      'answers': [
        '60',
        '80',
        '90',
        '70',
      ],
      'correctAnswer': '90'
    },
    {
      'question':
          'Qual time de futebol ganhou mais Copas do Mundo?',
      'answers': [
        'Chile',
        'Argentina',
        'Alemanha',
        'Brasil',
      ],
      'correctAnswer': 'Brasil'
    },
    {
      'question':
          'Quem ganhou a Copa do Mundo de 2010?',
      'answers': [
        'Espanha',
        'Croacia',
        'EUA',
        'Alemanha',
      ],
      'correctAnswer': 'Espanha',
    },
    {
      'question':
          'Qual é o time brasileiro com mais titulos mundiais?',
      'answers': [
        'Santos',
        'Sao Paulo',
        'Vasco',
        'Flamengo',
      ],
      'correctAnswer': 'Sao Paulo',
    },
    {
      'question':
          'Quantas Copas do Mundo a Itália ganhou?',
      'answers': [
        '1',
        '2',
        '3',
        '4',
      ],
      'correctAnswer': '4',
    },
  ];
  void handleAnswer(String answer) {
    setState(() {
      selectedAnswer = answer;
      isCorrect = answer == questions[currentQuestionIndex]['correctAnswer'];
    });
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        selectedAnswer = null;
        isCorrect = null;
        if (currentQuestionIndex < questions.length - 1) {
          currentQuestionIndex++;
        } else {
          
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Quiz futebolístico!',
              style: GoogleFonts.ibmPlexMono(
                  fontSize: 20, fontWeight: FontWeight.w400))),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(24),
            color: Colors.grey[100],
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Center(
              child: Text(
                currentQuestion['question'],
                style: GoogleFonts.delaGothicOne(
                    color: Colors.black, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Wrap(
              children: currentQuestion['answers'].map<Widget>((resposta) {
            bool isSelected = selectedAnswer == resposta;
            Color? buttonColor;
            if (isSelected) {
              buttonColor = isCorrect! ? Colors.green : Colors.red;
              isCorrect! ? point++ : null;
            } else {
              buttonColor = Colors.grey[800];
            }
            return meuBtn(resposta, () => handleAnswer(resposta), buttonColor);
          }).toList()),
        ],
      ),
    );
  }
}

Widget meuBtn(String resposta, VoidCallback onPressed, Color? color) =>
    Container(
      margin: const EdgeInsets.all(16),
      width: 140,
      height: 80,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: color, padding: const EdgeInsets.all(16)),
        child: Text(
          resposta,
          style: GoogleFonts.ibmPlexMono(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );