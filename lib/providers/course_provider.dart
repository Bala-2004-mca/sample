import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/course_unit.dart';

class CourseProvider with ChangeNotifier {
  List<CourseUnit> _units = [];
  bool _isInitialized = false;

  List<CourseUnit> get units => _units;

  CourseProvider() {
    _initializeUnits();
  }

  void _initializeUnits() {
    if (_isInitialized) return;

    _units = [
      CourseUnit(
        id: 'unit1',
        title: 'Unit I: Introduction to Python',
        description: 'Python overview, getting started, and fundamentals',
        topics: [
          'History of python',
          'Why python',
          'Python comments',
          'Variables',
          'Keywords',
          'Data type',
          'Operators',
          'Classes and objects',
          'Encapsulation',
          'Polymorphism',
          'inheritance',
        ],
        isUnlocked: true,
        lessons: 11,
      ),
      CourseUnit(
        id: 'unit2',
        title: 'Unit II: Control & Functions',
        description: 'Control statements, functions and string manipulation',
        topics: [
          'Control statement',
          'For loop',
          'While loop',
          'String',
          'Slicing',
          'String traversal',
          'Escape character',
          'String formatting operator and function',
          'Function',
          'Build in function',
          'User defined function',
        ],
        isUnlocked: true,
        lessons: 11,
      ),
      CourseUnit(
        id: 'unit3',
        title: 'Unit III: Data Structures',
        description: 'Tuples, Lists, Dictionaries and File handling',
        topics: [
          'Tuples',
          'Creating Tuples',
          'Accessing Values in Tuples',
          'Tuple Assignment',
          'Tuples as Return Values',
          'Basic Tuple Operations',
          'Built-in Tuple Functions',
          'Lists',
          'Values and Accessing Elements',
          'Traversing a List',
          'Deleting Elements from List',
          'Built-in List Operators & Methods',
          'Dictionaries',
          'Creating a Dictionary',
          'Accessing Values',
          'Updating and Adding Elements',
          'Deleting Elements',
          'Dictionary Operations',
          'Built-in Dictionary Methods',
          'File Handling & Exceptions',
          'Introduction to File I/O',
          'Using Loops to Process Files',
          'Processing Records (CSV)',
          'Exceptions',
        ],
        isUnlocked: true,
        lessons: 24,
      ),
      CourseUnit(
        id: 'unit4',
        title: 'Unit IV: Data Manipulation',
        description: 'NumPy and Pandas for data manipulation',
        topics: [
          'Data manipulation tools and softwares',
          'NumPy Installation',
          'ndarray Basics',
          'Basic Operations',
          'Indexing, Slicing, and Iterating',
          'Shape and Array Manipulation',
          'Array Manipulation',
          'Structured Arrays',
          'Reading and Writing Array Data on Files',
          'The Pandas Library: An Introduction',
          'Pandas Installation',
          'Introduction to pandas Data Structures',
          'Operations Between Data Structures',
          'Function Application and Mapping',
          'Sorting and Ranking',
          'Correlation and Covariance',
          '“Not a Number” Data',
          'Hierarchical Indexing and Leveling',
          'Reading and Writing Data',
        ],
        isUnlocked: true,
        lessons: 19,
      ),
      CourseUnit(
        id: 'unit5',
        title: 'Unit V: Data Analysis & Visualization',
        description: 'Data analysis, visualization and machine learning use cases',
        topics: [
          'Data Analysis with Python: Importing Datasets',
          'Cleaning and Preparing the Data: Identify and Handle Missing Values',
          'Data Formatting',
          'Dimension Reduction',
          'Feature Extraction',
          'Data Visualization: Matplotlib Architecture',
          'pyplot',
          'Plotting with pandas and seaborn: Line, Bar, Histogram, Density, Scatter charts',
          'Python visualization tools',
        ],
        isUnlocked: true,
        lessons: 9,
      ),
    ];
    _isInitialized = true;
    _loadProgress();
  }

  Future<void> _loadProgress() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      for (var unit in _units) {
        unit.isCompleted = prefs.getBool('${unit.id}_completed') ?? false;
        // unit.isUnlocked = prefs.getBool('${unit.id}_unlocked') ?? unit.isUnlocked; // Don't load lock state
        unit.score = prefs.getInt('${unit.id}_score') ?? 0;
        unit.completedTopics = prefs.getStringList('${unit.id}_completedTopics') ?? [];
      }
      notifyListeners();
    } catch (e) {
      if (kDebugMode) {
        print('Error loading progress: $e');
      }
    }
  }

  Future<void> completeTopic(String unitId, String topicTitle) async {
    final unitIndex = _units.indexWhere((unit) => unit.id == unitId);
    if (unitIndex != -1) {
      if (!_units[unitIndex].completedTopics.contains(topicTitle)) {
        _units[unitIndex].completedTopics.add(topicTitle);
        await _saveUnitState(unitId, completedTopics: _units[unitIndex].completedTopics);
        notifyListeners();
      }
    }
  }

  Future<void> completeUnit(String unitId, int score) async {
    final unitIndex = _units.indexWhere((unit) => unit.id == unitId);
    if (unitIndex != -1) {
      _units[unitIndex].score = score;
      if (score >= 7) {
        _units[unitIndex].isCompleted = true;
      }
      await _saveUnitState(unitId, completed: _units[unitIndex].isCompleted, score: score);
      notifyListeners();
    }
  }

  Future<void> _saveUnitState(String unitId, {bool? completed, bool? unlocked, int? score, List<String>? completedTopics}) async {
    final prefs = await SharedPreferences.getInstance();
    if (completed != null) await prefs.setBool('${unitId}_completed', completed);
    if (unlocked != null) await prefs.setBool('${unitId}_unlocked', unlocked);
    if (score != null) await prefs.setInt('${unitId}_score', score);
    if (completedTopics != null) await prefs.setStringList('${unitId}_completedTopics', completedTopics);
  }

  void resetProgress() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    _isInitialized = false;
    _initializeUnits();
    notifyListeners();
  }
}
