import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// Packages for Syntax Highlighting
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:highlight/languages/python.dart';

class PythonIdeScreen extends StatefulWidget {
  const PythonIdeScreen({super.key});

  @override
  State<PythonIdeScreen> createState() => _PythonIdeScreenState();
}

class _PythonIdeScreenState extends State<PythonIdeScreen> {
  // Use CodeController instead of TextEditingController
  late CodeController _codeController;

  String _output = "Output will appear here...";
  bool _isLoading = false;

  final String _apiUrl = "https://emkc.org/api/v2/piston/execute";

  @override
  void initState() {
    super.initState();
    // Initialize the CodeController with Python language and initial text
    _codeController = CodeController(
      text: '# Write Python code here...\nprint("Hello from Flutter IDE!")\n\ndef add(a, b):\n    return a + b\n\nprint(add(5, 10))',
      language: python, // Defined in package:highlight/languages/python.dart
    );
  }

  @override
  void dispose() {
    _codeController.dispose();
    super.dispose();
  }

  Future<void> _runCode() async {
    if (_isLoading) return;

    setState(() {
      _output = "Executing code...";
      _isLoading = true;
    });

    // Access text from CodeController just like a standard controller
    final String code = _codeController.text;

    try {
      final response = await http.post(
        Uri.parse(_apiUrl),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          "language": "python",
          "version": "3.10.0",
          "files": [{"content": code}]
        }),
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> data = jsonDecode(response.body);
        final runData = data['run'];
        final String stdout = runData['stdout'] ?? '';
        final String stderr = runData['stderr'] ?? '';

        setState(() {
          if (stderr.isNotEmpty) {
            _output = "Error:\n$stderr";
          } else if (stdout.isNotEmpty) {
            _output = stdout;
          } else {
            _output = "Code ran successfully (No output).";
          }
        });
      } else {
        setState(() {
          _output = "API Error: ${response.statusCode}\n${response.body}";
        });
      }
    } catch (e) {
      setState(() {
        _output = "Network Error: $e";
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Python IDE'),
        backgroundColor: const Color(0xFF1B6A6A),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Python Code Editor",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // --- Code Editor with Syntax Highlighting ---
            Expanded(
              flex: 3,
              child: Container(
                // Add a border around the editor
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                  // Background color to match the Monokai theme
                  color: const Color(0xFF272822),
                ),
                clipBehavior: Clip.hardEdge,
                child: SingleChildScrollView(
                  child: CodeTheme(
                    data: CodeThemeData(styles: monokaiSublimeTheme),
                    child: CodeField(
                      controller: _codeController,
                      textStyle: const TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 16
                      ),
                      // gutterStyle controls the line number area
                      gutterStyle: const GutterStyle(
                        textStyle: TextStyle(
                            color: Colors.white54,
                            fontSize: 16,
                            height: 1.5
                        ),
                        showLineNumbers: true,
                        width: 50, // Width of line number column
                        margin: 5,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // --- Run Button ---
            Center(
              child: ElevatedButton(
                onPressed: _runCode,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1B6A6A),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: _isLoading
                    ? const SizedBox(
                  width: 24,
                  height: 24,
                  child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2),
                )
                    : const Text(
                    "Run Code",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)
                ),
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              "Output:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // --- Output Display ---
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: SingleChildScrollView(
                  child: Text(
                    _output,
                    style: const TextStyle(
                      fontFamily: "monospace",
                      fontSize: 15,
                      color: Colors.black87,
                    ),
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