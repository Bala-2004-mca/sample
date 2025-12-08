import 'package:flutter/material.dart';
import 'package:pylearn/data/topic_content.dart';
import 'package:pylearn/screens/sub_topic_quiz_screen.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class SubTopicContentScreen extends StatelessWidget {
  final String unitId;
  final String topicNumber;
  final String topicTitle;

  const SubTopicContentScreen({
    super.key,
    required this.unitId,
    required this.topicNumber,
    required this.topicTitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final content = topicContent[topicTitle] ?? 'Content not available.';

    return Scaffold(
      appBar: AppBar(
        title: Text(topicTitle),
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Container(
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
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '$topicNumber: $topicTitle',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                        const SizedBox(height: 24),
                        if (content.isNotEmpty)
                          MarkdownBody(
                            data: content,
                            styleSheet: MarkdownStyleSheet(
                              p: const TextStyle(fontSize: 16, height: 1.5),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SubTopicQuizScreen(
                        unitId: unitId,
                        topicNumber: topicNumber,
                        topicTitle: topicTitle,
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.quiz),
                label: const Text('Take Sub-Topic Quiz'),
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  backgroundColor: theme.colorScheme.primary,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
