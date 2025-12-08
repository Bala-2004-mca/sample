import 'package:flutter/material.dart';

class DummyQuizScreen extends StatefulWidget {
  const DummyQuizScreen({super.key});

  @override
  State<DummyQuizScreen> createState() => _DummyQuizScreenState();
}

class _DummyQuizScreenState extends State<DummyQuizScreen> {
  final _questions = const [
    {
      'question': 'A class in Python is created using which keyword?',
      'answers': ['def', 'class', 'object', 'return'],
      'correctAnswer': 'class',
    },
    {
      'question': 'Which symbol is used to write comments in Python?',
      'answers': ['//', '*', '#', '@'],
      'correctAnswer': '#',
    },
    {
      'question': 'Which of the following is a valid variable name in Python?',
      'answers': ['2name', 'roll_no_1', 'name@12', 'for'],
      'correctAnswer': 'roll_no_1',
    },
    {
      'question': 'What will be the output?\n\nprint("Hello, World!") # This is a comment',
      'answers': [
        'SyntaxError',
        'Hello,World!',
        'Thisisacomment',
        '# Hello, World!',
      ],
      'correctAnswer': 'Hello,World!',
    },
    {
      'question': 'What will the output be?\n\na = 10\nb = 20\na, b = b, a\nprint(a, b)',
      'answers': ['10 20', '20 10', 'Error', '30 30'],
      'correctAnswer': '20 10',
    },
    {
      'question': 'What is the datatype of variable a?\n\na = 25\nprint(type(a))',
      'answers': [
        "<class 'str'>",
        "<class 'int'>",
        "<class 'float'>",
        "<class 'bool'>",
      ],
      'correctAnswer': "<class 'int'>",
    },
    {
      'question': 'What does the following program print?\n\nclass Car:\n  brand = "Honda"\nc = Car()\nprint(c.brand)',
      'answers': ['Error', 'Car', 'Honda', 'brand'],
      'correctAnswer': 'Honda',
    },
    {
      'question': 'What will the following program print?\n\nnum = 60\nprint(num > 50)',
      'answers': ['50', 'False', 'True', 'Error'],
      'correctAnswer': 'True',
    },
    {
      'question': 'What happens when this code executes?\n\nclass Employee:\n  def __init__(self, name, salary):\n    self.name = name\n    self.__salary = salary\n\nemp = Employee("Ravi", 40000)\nprint(emp.__salary)',
      'answers': ['40000', 'Ravi40000', 'None', 'Attribute Error'],
      'correctAnswer': 'Attribute Error',
    },
    {
      'question': 'What is the output?\n\nclass Animal:\n  def sound(self):\n    return "Some sound"\nclass Dog(Animal):\n  def sound(self):\n    return "Bark"\n\nobj = Dog()\nprint(obj.sound())',
      'answers': ['Some sound', 'Bark', 'Error', 'Woof'],
      'correctAnswer': 'Bark',
    },
  ];

  int _questionIndex = 0;
  String? _selectedAnswer;

  void _nextQuestion() {
    if (_questionIndex < _questions.length - 1) {
      setState(() {
        _questionIndex++;
        _selectedAnswer = null;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('You have completed the quiz!'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = _questions[_questionIndex];
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        title: const Text('Quiz'),
        backgroundColor: theme.colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Question ${_questionIndex + 1}/${_questions.length}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      currentQuestion['question'] as String,
                      style: TextStyle(fontSize: 20, color: theme.colorScheme.primary),
                    ),
                    const SizedBox(height: 24),
                    ...(currentQuestion['answers'] as List<String>).map((answer) {
                      return RadioListTile<String>(
                        title: Text(answer),
                        value: answer,
                        groupValue: _selectedAnswer,
                        onChanged: (value) {
                          setState(() {
                            _selectedAnswer = value;
                          });
                        },
                      );
                    }).toList(),
                  ],
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: _selectedAnswer != null ? _nextQuestion : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                foregroundColor: Colors.white,
              ),
              child: const Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
