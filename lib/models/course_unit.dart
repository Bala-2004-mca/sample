class CourseUnit {
  final String id;
  final String title;
  final String description;
  final List<String> topics;
  bool isCompleted;
  bool isUnlocked;
  int score;
  final int lessons;
  List<String> completedTopics;

  CourseUnit({
    required this.id,
    required this.title,
    required this.description,
    required this.topics,
    this.isCompleted = false,
    this.isUnlocked = false,
    this.score = 0,
    required this.lessons,
    this.completedTopics = const [],
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'topics': topics,
      'isCompleted': isCompleted,
      'isUnlocked': isUnlocked,
      'score': score,
      'lessons': lessons,
      'completedTopics': completedTopics,
    };
  }

  factory CourseUnit.fromMap(Map<String, dynamic> map) {
    return CourseUnit(
      id: map['id'],
      title: map['title'],
      description: map['description'],
      topics: List<String>.from(map['topics']),
      isCompleted: map['isCompleted'],
      isUnlocked: map['isUnlocked'],
      score: map['score'] ?? 0,
      lessons: map['lessons'] ?? 0,
      completedTopics: List<String>.from(map['completedTopics'] ?? []),
    );
  }
}
