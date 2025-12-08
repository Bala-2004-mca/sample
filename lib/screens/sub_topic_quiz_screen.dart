import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pylearn/data/all_quiz_data.dart';
import 'package:pylearn/providers/course_provider.dart';

class SubTopicQuizScreen extends StatefulWidget {
  final String topicNumber;
  final String topicTitle;
  final String unitId;

  const SubTopicQuizScreen({
    super.key,
    required this.topicNumber,
    required this.topicTitle,
    required this.unitId,
  });

  @override
  State<SubTopicQuizScreen> createState() => _SubTopicQuizScreenState();
}

class _SubTopicQuizScreenState extends State<SubTopicQuizScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;
  List<Map<String, dynamic>> _questions = [];
  bool _quizFinished = false;

  @override
  void initState() {
    super.initState();
    _questions = allQuizData[widget.topicTitle] ?? [];
  }

  void _answerQuestion(String selectedAnswer) {
    if (_quizFinished) return;

    final correctAnswer = _questions[_currentQuestionIndex]['correctAnswer'];
    if (selectedAnswer == correctAnswer) {
      setState(() {
        _score++;
      });
    }

    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
      });
    } else {
      // Mark the topic as complete if the user passes
      if ((_score / _questions.length) >= 0.7) {
        context.read<CourseProvider>().completeTopic(widget.unitId, widget.topicTitle);
      }
      setState(() {
        _quizFinished = true;
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _currentQuestionIndex = 0;
      _score = 0;
      _quizFinished = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.topicTitle),
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: _questions.isEmpty
          ? const Center(child: Text('No quiz available for this topic.'))
          : _quizFinished
              ? _buildResultScreen(theme)
              : _buildQuizScreen(theme),
    );
  }

  Widget _buildQuizScreen(ThemeData theme) {
    final question = _questions[_currentQuestionIndex];
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            theme.colorScheme.primary.withOpacity(0.8),
            theme.colorScheme.secondary.withOpacity(0.8),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  question['question'],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 32),
            ..._buildAnswerButtons(question['answers'], theme),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildAnswerButtons(List<String> answers, ThemeData theme) {
    return answers.map((answer) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ElevatedButton(
          onPressed: () => _answerQuestion(answer),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: theme.colorScheme.primary,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          child: Text(answer, style: const TextStyle(fontSize: 16)),
        ),
      );
    }).toList();
  }

  Widget _buildResultScreen(ThemeData theme) {
    final bool passed = (_score / _questions.length) >= 0.7;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            passed ? 'Quiz Passed!' : 'Try Again!',
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'Your score: $_score / ${_questions.length}',
            style: const TextStyle(fontSize: 18),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: passed ? () => Navigator.pop(context) : _resetQuiz,
            child: Text(passed ? 'Continue' : 'Retake Quiz'),
          ),
        ],
      ),
    );
  }
}
