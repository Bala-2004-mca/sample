import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/course_provider.dart';

class MyClassesScreen extends StatelessWidget {
  const MyClassesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final courseProvider = Provider.of<CourseProvider>(context);
    final unlockedCourses = courseProvider.units.where((unit) => unit.isUnlocked).toList();
    final theme = Theme.of(context);

    // Dummy progress for demonstration
    if (unlockedCourses.isNotEmpty && unlockedCourses.first.id == 'unit1') {
      unlockedCourses.first.completedTopics = List.generate((unlockedCourses.first.topics.length * 0.25).round(), (i) => unlockedCourses.first.topics[i]);
    }

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        title: const Text('My Classes'),
        backgroundColor: theme.colorScheme.primary,
      ),
      body: unlockedCourses.isEmpty
          ? const Center(
              child: Text('No courses available yet.'),
            )
          : ListView.builder(
              itemCount: unlockedCourses.length,
              itemBuilder: (context, index) {
                final course = unlockedCourses[index];
                final completionPercentage = (course.completedTopics.length / course.topics.length) * 100;

                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  color: Colors.white,
                  child: ListTile(
                    title: Text(course.title, style: TextStyle(fontWeight: FontWeight.bold, color: theme.colorScheme.primary)),
                    subtitle: Text(course.description),
                    trailing: SizedBox(
                      width: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: CircularProgressIndicator(
                              value: completionPercentage / 100,
                              strokeWidth: 5,
                              backgroundColor: Colors.grey.shade200,
                              valueColor: AlwaysStoppedAnimation<Color>(theme.colorScheme.primary),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text('${completionPercentage.toStringAsFixed(0)}% Done', style: const TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
