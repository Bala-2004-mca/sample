
final Map<String, List<Map<String, dynamic>>> unit2QuizData = {
  'Control statement': [
    {
      'question': 'The else block executes only when:',
      'answers': ['The if condition is True', 'The if condition is False', 'The program starts', 'None'],
      'correctAnswer': 'The if condition is False',
    },
    {
      'question': 'Identify the correct syntax of an if statement in Python.',
      'answers': ['if (x > 10):', 'if x > 10:', 'if x > 10;', 'if x > 10 then:'],
      'correctAnswer': 'if x > 10:',
    },
    {
      'question': 'What is the output of this program?\nnum = 0\nif num > 0:\n  print("Positive")\nelif num == 0:\n  print("Zero")\nelse:\n  print("Negative")',
      'answers': ['Positive', 'Zero', 'Negative', 'Error'],
      'correctAnswer': 'Zero',
    },
  ],
  'For loop': [
    {
      'question': 'What will be the output of this code?\nfor i in range(3):\n  print(i)',
      'answers': ['1 2 3', '0 1 2', '0 1 2 3', 'Error'],
      'correctAnswer': '0 1 2',
    },
    {
      'question': 'A for loop is used to:',
      'answers': ['Repeat code for a known number of times', 'Print only once', 'Stop execution', 'Create variables'],
      'correctAnswer': 'Repeat code for a known number of times',
    },
    {
      'question': 'What is the output of this code?\nfor x in "Hi":\n  print(x)',
      'answers': ['H', 'i', 'Hi', 'H i'],
      'correctAnswer': 'H i',
    },
  ],
  'While loop': [
    {
      'question': 'What is the output of this code?\nx = 2\nwhile x < 5:\n  print(x)\n  x += 1',
      'answers': ['2 3 4', '2 3 4 5', '1 2 3 4', 'Error'],
      'correctAnswer': '2 3 4',
    },
    {
      'question': 'A while loop stops when:',
      'answers': ['Condition becomes True', 'Condition becomes False', 'Program starts', 'Condition is printed'],
      'correctAnswer': 'Condition becomes False',
    },
    {
      'question': 'Which loop is best when iteration count is unknown?',
      'answers': ['for loop', 'while loop', 'if statement', 'print statement'],
      'correctAnswer': 'while loop',
    },
  ],
  'String': [
    {
      'question': 'Which of the following correctly represents a string in Python?',
      'answers': ['name = Hello', 'name = \'Hello\'', 'name = [Hello]', 'name = (Hello)'],
      'correctAnswer': 'name = \'Hello\'',
    },
    {
      'question': 'What will be the output of the code below?\ns = "Python"\nprint(s[-1])',
      'answers': ['P', 'h', 'n', 'Error'],
      'correctAnswer': 'n',
    },
    {
      'question': 'What does the len() function return when used on a string?',
      'answers': ['Number of words', 'Number of characters including spaces', 'Index number of last character', 'Only alphabets count'],
      'correctAnswer': 'Number of characters including spaces',
    },
  ],
  'Slicing': [
    {
      'question': 'In Python slicing s[1:4], which characters are included?',
      'answers': ['Indices 1 to 4 including 4', 'Indices 1 to 3 (4 is excluded)', 'Only character at index 4', 'Error in slicing'],
      'correctAnswer': 'Indices 1 to 3 (4 is excluded)',
    },
    {
      'question': 'What will be the output of the following code?\ns = "Hello"\nprint(s[:3])',
      'answers': ['Hello', 'He', 'Hel', 'llo'],
      'correctAnswer': 'Hel',
    },
    {
      'question': 'Which slicing will return the entire string Python?',
      'answers': ['s[1:6]', 's[:]', 's[0:5]', 's[0:-1]'],
      'correctAnswer': 's[:]',
    },
  ],
  'String traversal': [
    {
      'question': 'What does string traversal mean in Python?',
      'answers': ['Deleting characters in a string', 'Accessing characters one by one', 'Sorting characters alphabetically', 'Splitting a string into words'],
      'correctAnswer': 'Accessing characters one by one',
    },
    {
      'question': 'Which loop can be used to traverse a string in Python?',
      'answers': ['Only for loop', 'Only while loop', 'Both for and while loops', 'No loop is needed'],
      'correctAnswer': 'Both for and while loops',
    },
    {
      'question': 'What will the following code output?\nfor ch in "AI":\n  print(ch)',
      'answers': ['AI on a single line', 'A and I on separate lines', 'Error', 'Only A'],
      'correctAnswer': 'A and I on separate lines',
    },
  ],
  'Escape character': [
    {
      'question': 'Which escape character is used to insert a new line in a string?',
      'answers': ['\t', '\n', '\\', '\''],
      'correctAnswer': '\n',
    },
    {
      'question': 'What will be the output of the following code?\nprint("Hello\tWorld")',
      'answers': ['Hello World (single space)', 'Hello World (tab space)', 'Hello\tWorld', 'Error'],
      'correctAnswer': 'Hello World (tab space)',
    },
    {
      'question': 'Which of the following will print: Hello "Python"?',
      'answers': ['print("Hello "Python"")', 'print("Hello \"Python\"")', 'print(\'Hello "Python"\')', 'Both B and C'],
      'correctAnswer': 'Both B and C',
    },
  ],
  'String formatting operator and function': [
    {
      'question': 'Which format code is used to insert an integer using the old-style (%) formatting?',
      'answers': ['%s', '%d', '%f', '%i'],
      'correctAnswer': '%d',
    },
    {
      'question': 'Identify the correct output:\nname = "Asha"\nprint("Hello %s" % name)',
      'answers': ['Hello Asha', 'Hello %name', '%s Asha', 'Error'],
      'correctAnswer': 'Hello Asha',
    },
    {
      'question': 'Which of the following is a correct example of an f-string?',
      'answers': ['print("Value: {x}")', 'print(f"Value: {x}")', 'print(f\'Value: x\')', 'print("fValue: {x}")'],
      'correctAnswer': 'print(f"Value: {x}")',
    },
  ],
  'Function': [
    {
      'question': 'Which keyword is used to define a function in Python?',
      'answers': ['func', 'define', 'def', 'function'],
      'correctAnswer': 'def',
    },
    {
      'question': 'Which of the following are the two main types of functions in Python?',
      'answers': ['Built-in and System functions', 'Built-in and User-defined functions', 'Private and Public functions', 'Named and Anonymous functions'],
      'correctAnswer': 'Built-in and User-defined functions',
    },
    {
      'question': 'What does a function help to achieve?',
      'answers': ['Makes code longer', 'Makes code less organized', 'Reusable and structured code', 'Converts data types automatically'],
      'correctAnswer': 'Reusable and structured code',
    },
  ],
  'Build in function': [
    {
      'question': 'Which function is used to accept input from the user in Python?',
      'answers': ['scan()', 'read()', 'input()', 'get()'],
      'correctAnswer': 'input()',
    },
    {
      'question': 'What will be the output of the following code?\nprint(type(123.45))',
      'answers': ['<class \'int\'', '<class \'float\'', '<class \'str\'', '<class \'double\''],
      'correctAnswer': '<class \'float\'',
    },
    {
      'question': 'Which function from the math module returns the largest integer less than or equal to a given number?',
      'answers': ['ceil()', 'floor()', 'fabs()', 'sqrt()'],
      'correctAnswer': 'floor()',
    },
  ],
  'User defined function': [
    {
      'question': 'Which of the following is the correct way to define a user-defined function in Python?',
      'answers': ['function hello():', 'def hello():', 'define hello():', 'fun hello():'],
      'correctAnswer': 'def hello():',
    },
    {
      'question': 'What will the following function return if called?\ndef greet():\n  print("Hi there!")',
      'answers': ['"Hi there!"', 'None', 'Error', '"greet"'],
      'correctAnswer': 'None',
    },
    {
      'question': 'Which keyword is used to return a value from a function?',
      'answers': ['exit', 'return', 'yield', 'output'],
      'correctAnswer': 'return',
    },
  ],
};
