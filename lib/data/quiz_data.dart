final Map<String, dynamic> quizData = {
  'unit1': [
    {
      'question': 'A class in Python is created using which keyword?',
      'answers': ['def', 'class', 'object', 'return'],
      'correctAnswer': 'class',
    },
    {
      'question': 'Which symbol is used to write comments in Python?',
      'answers': ['//', '*', '#', '@'],
      'correctAnswer': '#',
    },
    {
      'question': 'Which of the following is a valid variable name in Python?',
      'answers': ['2name', 'roll_no_1', 'name@12', 'for'],
      'correctAnswer': 'roll_no_1',
    },
    {
      'question': 'What will be the output of the following code? print("Hello, World!") # This is a comment',
      'answers': ['SyntaxError', 'Hello,World!', 'Thisisacomment', '# Hello, World!'],
      'correctAnswer': 'Hello,World!',
    },
    {
      'question': 'Which output will the below program give?\na = 10\nb = 20\na, b = b, a\nprint(a, b)',
      'answers': ['10 20', '20 10', 'Error', '30 30'],
      'correctAnswer': '20 10',
    },
    {
      'question': 'What is the datatype of the variable a?\na = 25\nprint(type(a))',
      'answers': ['<class \'str\'', '<class \'int\'', '<class \'float\'', '<class \'bool\''],
      'correctAnswer': '<class \'int\'',
    },
    {
      'question': 'What does the following program print?\nclass Car:\n    brand = "Honda"\nc = Car()\nprint(c.brand)',
      'answers': ['Error', 'Car', 'Honda', 'brand'],
      'correctAnswer': 'Honda',
    },
    {
      'question': 'What will the following program print?\nnum = 60\nprint(num > 50)',
      'answers': ['50', 'False', 'True', 'Error'],
      'correctAnswer': 'True',
    },
    {
      'question': 'What will happen when this code executes?\nclass Employee:\n    def __init__(self, name, salary):\n        self.name = name\n        self.__salary = salary\n\nemp = Employee("Ravi", 40000)\nprint(emp.__salary)',
      'answers': ['40000', 'Ravi40000', 'None', 'Attribute Error'],
      'correctAnswer': 'Attribute Error',
    },
    {
      'question': 'Which output will the program produce?\nclass Animal:\n    def sound(self):\n        return "Some sound"\nclass Dog(Animal):\n    def sound(self):\n        return "Bark"\n\nobj = Dog()\nprint(obj.sound())',
      'answers': ['Somesound', 'Bark', 'Error', 'Woof'],
      'correctAnswer': 'Bark',
    },
  ],
  'unit2': [
    {
      'question': 'Which of the following is a valid variable name in Python?',
      'answers': ['2name', '_age', '@count', 'roll#'],
      'correctAnswer': '_age',
    },
    {
      'question': 'Which of the following is a valid complex number in Python?',
      'answers': ['3 + 2i', '3 + 2j', '3 + 2k', '3 + 2z'],
      'correctAnswer': '3 + 2j',
    },
    {
      'question': 'What will be the output of the following code?\nx = True\ny = False\nprint(x and not y)',
      'answers': ['True', 'False', '1', '0'],
      'correctAnswer': 'True',
    },
    {
      'question': 'Which operator is used for floor division in Python?',
      'answers': ['/', '//', '%', '**'],
      'correctAnswer': '//',
    },
    {
      'question': 'What will the following code output?\na = 5\nb = 2\nprint(a ** b)',
      'answers': ['10', '25', '32', '7'],
      'correctAnswer': '25',
    },
    {
      'question': 'What is printed by the following code?\nclass Cat:\n    sound = "Meow"\ncat1 = Cat()\nprint(cat1.sound)',
      'answers': ['Dog', 'Meow', 'sound', 'Error'],
      'correctAnswer': 'Meow',
    },
    {
      'question': 'Which of the following statements about Python encapsulation is TRUE?',
      'answers': ['All class variables are always public', 'Private variables can be accessed directly from outside the class', 'Private variables are prefixed with double underscore __', 'Python does not support encapsulation'],
      'correctAnswer': 'Private variables are prefixed with double underscore __',
    },
    {
      'question': 'Which method can be used to convert a string to uppercase?',
      'answers': ['upper()', 'toupper()', 'capitalize()', 'upper_case()'],
      'correctAnswer': 'upper()',
    },
    {
      'question': 'What will be the output of the following code?\ndef multiply(a, b=2):\n    return a * b\nprint(multiply(3))',
      'answers': ['2', '3', '6', 'Error'],
      'correctAnswer': '6',
    },
    {
      'question': 'Which of the following statements about Python functions is FALSE?',
      'answers': ['Functions can have default parameters', 'Functions always return a value', 'Functions can be called multiple times', 'Functions are reusable blocks of code'],
      'correctAnswer': 'Functions always return a value',
    },
  ],
  'unit3': [
    {
      'question': 'Which of the following creates a tuple?',
      'answers': ['[1, 2, 3]', '{1, 2, 3}', '(1, 2, 3)', 'tuple[1,2,3]'],
      'correctAnswer': '(1, 2, 3)',
    },
    {
      'question': 'What is the result of t[1] if t = (10, 20, 30)?',
      'answers': ['10', '20', '30', 'Error'],
      'correctAnswer': '20',
    },
    {
      'question': 'Which operator is used to join two tuples?',
      'answers': ['*', '+', '–', '/'],
      'correctAnswer': '+',
    },
    {
      'question': 'Which of the following accesses the 3rd element of a list L?',
      'answers': ['L(3)', 'L[2]', 'L[3]', 'L{3}'],
      'correctAnswer': 'L[2]',
    },
    {
      'question': 'Which method removes an element from a list by value?',
      'answers': ['delete()', 'pop()', 'remove()', 'cut()'],
      'correctAnswer': 'remove()',
    },
    {
      'question': 'Which is a valid dictionary?',
      'answers': ['{1,2,3,4}', '{"a":10, "b":20}', '("a",10)', '["a",10]'],
      'correctAnswer': '{"a":10, "b":20}',
    },
    {
      'question': 'Which method returns all keys in a dictionary?',
      'answers': ['keys()', 'getkeys()', 'list()', 'items()'],
      'correctAnswer': 'keys()',
    },
    {
      'question': 'Which mode is used to append content to a file?',
      'answers': ['“r”', '“w”', '“a”', '“x”'],
      'correctAnswer': '“a”',
    },
    {
      'question': 'Which loop is best for reading a file line by line?',
      'answers': ['while loop', 'for line in f:', 'do-while', 'repeat-until'],
      'correctAnswer': 'for line in f:',
    },
    {
      'question': 'Exceptions in Python are handled using:',
      'answers': ['if-else', 'try-except', 'throw-catch', 'switch'],
      'correctAnswer': 'try-except',
    },
  ],
  'unit4': [
    {'question': 'Unit 4 - Question 1', 'answers': ['A', 'B', 'C', 'D'], 'correctAnswer': 'A'},
  ],
  'unit5': [
    {'question': 'Unit 5 - Question 1', 'answers': ['A', 'B', 'C', 'D'], 'correctAnswer': 'A'},
  ],
};