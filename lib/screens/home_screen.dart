import 'package:flutter/material.dart';
import 'package:pylearn/models/course_unit.dart';
import 'package:pylearn/providers/course_provider.dart';
import 'package:pylearn/screens/chatbot_screen.dart';
import 'package:pylearn/screens/my_classes_screen.dart';
import 'package:pylearn/screens/performance_screen.dart';
import 'package:pylearn/screens/profile_screen.dart';
import 'package:pylearn/screens/python_ide_screen.dart';
import 'package:pylearn/screens/unit_content_screen.dart';
import 'package:pylearn/utils/fade_page_route.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    CourseGrid(),
    MyClassesScreen(),
    PerformanceScreen(),
    ProfileScreen(),
    ChatbotScreen(),
    PythonIdeScreen(),
  ];

  Widget _buildBody() {
    return _widgetOptions.elementAt(_selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        // Use BottomNavigationBar for mobile
        return Scaffold(
          backgroundColor: theme.colorScheme.surface,
          appBar: AppBar(
            title: const Text('Python'),
            backgroundColor: theme.colorScheme.primary,
          ),
          body: _buildBody(),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'My Classes',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.show_chart),
                label: 'Performance',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.support_agent),
                label: 'Support',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.code),
                label: 'IDE',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: theme.colorScheme.primary,
            unselectedItemColor: Colors.grey.shade600,
            onTap: (index) => setState(() => _selectedIndex = index),
            type: BottomNavigationBarType.fixed,
          ),
        );
      } else {
        // Use NavigationRail for desktop
        return Scaffold(
          backgroundColor: theme.colorScheme.surface,
          body: Row(
            children: [
              NavigationRail(
                selectedIndex: _selectedIndex,
                onDestinationSelected: (index) =>
                    setState(() => _selectedIndex = index),
                labelType: NavigationRailLabelType.none,
                extended: true,
                backgroundColor: theme.colorScheme.surface,
                indicatorColor: theme.colorScheme.primary.withAlpha(25),
                leading: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                  child: Text(
                    'Python',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                destinations: const <NavigationRailDestination>[
                  NavigationRailDestination(
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(Icons.home),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    label: Text('Home'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.school_outlined),
                    selectedIcon: Icon(Icons.school),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    label: Text('My Classes'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.show_chart_outlined),
                    selectedIcon: Icon(Icons.show_chart),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    label: Text('Performance'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.person_outline),
                    selectedIcon: Icon(Icons.person),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    label: Text('Account'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.support_agent_outlined),
                    selectedIcon: Icon(Icons.support_agent),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    label: Text('Support'),
                  ),
                  NavigationRailDestination(
                    icon: Icon(Icons.code_outlined),
                    selectedIcon: Icon(Icons.code),
                    padding: EdgeInsets.symmetric(vertical: 8),
                    label: Text('IDE'),
                  ),
                ],
              ),
              const VerticalDivider(thickness: 1, width: 1),
              Expanded(
                child: _buildBody(),
              ),
            ],
          ),
        );
      }
    });
  }
}

class CourseGrid extends StatelessWidget {
  const CourseGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final courseProvider = Provider.of<CourseProvider>(context);
    final units = courseProvider.units;

    return LayoutBuilder(
      builder: (context, constraints) {
        int crossAxisCount = 1;
        if (constraints.maxWidth > 1200) {
          crossAxisCount = 3;
        } else if (constraints.maxWidth > 600) {
          crossAxisCount = 2;
        }

        return GridView.builder(
          padding: const EdgeInsets.all(24.0),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 24,
            mainAxisSpacing: 24,
            childAspectRatio: 1.0,
          ),
          itemCount: units.length,
          itemBuilder: (context, index) {
            final unit = units[index];
            return CourseCard(unit: unit);
          },
        );
      },
    );
  }
}

class CourseCard extends StatefulWidget {
  final CourseUnit unit;

  const CourseCard({super.key, required this.unit});

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  bool _isHovered = false;

  void _navigateToUnitContent(BuildContext context, CourseUnit unit) {
    Navigator.push(
      context,
      FadePageRoute(child: UnitContentScreen(unit: unit)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        transform: _isHovered
            ? (Matrix4.identity()..translate(0.0, -5.0, 0.0))
            : Matrix4.identity(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: theme.colorScheme.primary.withAlpha(50),
                    blurRadius: 20,
                    spreadRadius: 0,
                  ),
                ]
              : [],
        ),
        child: Card(
          color: widget.unit.isUnlocked
              ? Colors.white
              : theme.colorScheme.surface.withAlpha(128),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.unit.title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: widget.unit.isUnlocked
                        ? theme.colorScheme.primary
                        : Colors.grey[500],
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Text(
                  widget.unit.description,
                  style: TextStyle(
                    fontSize: 14,
                    color: widget.unit.isUnlocked
                        ? Colors.black87
                        : Colors.grey[500],
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                const Spacer(),
                if (widget.unit.isUnlocked)
                  Center(
                    child: ElevatedButton(
                      onPressed: () => _navigateToUnitContent(context, widget.unit),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.primary,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 12),
                      ),
                      child: const Text('START', style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
