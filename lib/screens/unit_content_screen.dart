import 'package:flutter/material.dart';
import 'package:pylearn/screens/dummy_quiz_screen.dart';
import 'package:pylearn/screens/sub_topic_content_screen.dart';
import '../models/course_unit.dart';

class UnitContentScreen extends StatelessWidget {
  final CourseUnit unit;

  const UnitContentScreen({super.key, required this.unit});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Special layout for Units with sub-topics
    if (unit.id == 'basics' ||
        unit.id == 'unit1' ||
        unit.id == 'unit2' ||
        unit.id == 'unit3' ||
        unit.id == 'unit4' ||
        unit.id == 'unit5') {
      return _buildParentChildLayout(context, theme);
    }

    // Default layout for other units
    return _buildDefaultLayout(context, theme);
  }

  Widget _buildParentChildLayout(BuildContext context, ThemeData theme) {
    final unitNumber = unit.id.replaceAll('unit', '');
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        title: Text(unit.title),
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: Card(
              elevation: 0,
              margin: const EdgeInsets.all(24.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: ListView.separated(
                padding: const EdgeInsets.all(16.0),
                itemCount: unit.topics.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  final topic = unit.topics[index];
                  return SubTopicCard(
                    topicNumber: '$unitNumber.${index + 1}'.replaceFirst('basics.', '0.'),
                    topicTitle: topic,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DummyQuizScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.quiz),
              label: const Text('Take Unit Quiz'),
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
    );
  }

  Widget _buildDefaultLayout(BuildContext context, ThemeData theme) {
    final unitNumber = unit.id.replaceAll('unit', '');
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        title: Text(unit.title),
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Expanded(
            child: LayoutBuilder(builder: (context, constraints) {
              int crossAxisCount = 1;
              if (constraints.maxWidth > 600) {
                crossAxisCount = 2;
              }

              return GridView.builder(
                padding: const EdgeInsets.all(24.0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 24,
                  mainAxisSpacing: 24,
                  childAspectRatio: 1.4,
                ),
                itemCount: unit.topics.length,
                itemBuilder: (context, index) {
                  final topic = unit.topics[index];
                  return TopicCard(
                    topicNumber: '$unitNumber.${index + 1}',
                    topicTitle: topic,
                  );
                },
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DummyQuizScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.quiz),
              label: const Text('Take Unit Quiz'),
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
    );
  }
}

class TopicCard extends StatelessWidget {
  final String topicNumber;
  final String topicTitle;

  const TopicCard({
    super.key,
    required this.topicNumber,
    required this.topicTitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Colors.grey.shade300),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                topicNumber,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.primary.withOpacity(0.7),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                topicTitle,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: theme.colorScheme.primary,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SubTopicCard extends StatelessWidget {
  final String topicNumber;
  final String topicTitle;

  const SubTopicCard({
    super.key,
    required this.topicNumber,
    required this.topicTitle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SubTopicContentScreen(
              topicNumber: topicNumber,
              topicTitle: topicTitle, unitId: '',
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Text(
              topicNumber,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: theme.colorScheme.primary.withOpacity(0.8),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                topicTitle,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
