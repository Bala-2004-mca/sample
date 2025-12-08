import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/course_provider.dart';

class PerformanceScreen extends StatelessWidget {
  const PerformanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final courseProvider = Provider.of<CourseProvider>(context);
    final completedCourses = courseProvider.units.where((unit) => unit.isUnlocked).toList(); // Show all unlocked courses
    final theme = Theme.of(context);

    // Dummy performance for demonstration
    if (completedCourses.isNotEmpty && completedCourses.first.id == 'unit1') {
      completedCourses.first.score = 25;
    }

    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        title: const Text('Performance'),
        backgroundColor: theme.colorScheme.primary,
      ),
      body: completedCourses.isEmpty
          ? const Center(
              child: Text('No performance data available yet.'),
            )
          : ListView.builder(
              itemCount: completedCourses.length,
              itemBuilder: (context, index) {
                final course = completedCourses[index];
                // Assuming a total of 30 questions for this dummy data
                final scorePercentage = (course.score / 30) * 100;

                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  color: Colors.white,
                  child: ListTile(
                    title: Text(course.title, style: TextStyle(fontWeight: FontWeight.bold, color: theme.colorScheme.primary)),
                    subtitle: Text('Quiz Performance'),
                    trailing: SizedBox(
                      width: 80,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 40,
                            width: 40,
                            child: CircularProgressIndicator(
                              value: scorePercentage / 100,
                              strokeWidth: 5,
                              backgroundColor: Colors.grey.shade200,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                scorePercentage >= 70 ? Colors.green : Colors.orange,
                              ),
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text('${scorePercentage.toStringAsFixed(0)}% Score', style: const TextStyle(fontSize: 12)),
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
