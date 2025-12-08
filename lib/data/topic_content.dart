
const Map<String, String> topicContent = {
  // Basics of Python
  'Comments, Identifiers & Reserved Keywords': """
**Comments:**
Comments in Python start with a hash character (`#`) and extend to the end of the line. They are used to explain the code and are ignored by the Python interpreter.
```python
# This is a single-line comment
```

**Identifiers:**
An identifier is a name used to identify a variable, function, class, or other objects.
- Starts with a letter (A-Z or a-z) or an underscore (`_`).
- Followed by zero or more letters, underscores, and digits (0-9).
- Python is case-sensitive, meaning `myVar` and `myvar` are different.

**Reserved Keywords:**
Keywords are reserved words in Python that have special meanings. You cannot use them as identifiers.
""",
  'Variables & Standard Data Types': 'Content for "Variables & Standard Data Types" goes here.',
  'Operators, Statements & Expressions': 'Content for "Operators, Statements & Expressions" goes here.',
  'String Operations & Boolean Expressions': 'Content for "String Operations & Boolean Expressions" goes here.',

  // Unit 1: Introduction to Python
  'History of python': """
Python was developed by Guido van Rossum at National Research Institute for Mathematics and Computer Science in Netherlands in 1990. Python became a popular programming language, widely used in both industry and academia because of its simple, concise and extensive support of libraries. It is a object-oriented programming language.
""",
  'Why python': """
COBOL, C#, C, C++ and Java are a few of the many programming languages available in information and technology today, some very well-known advantages of Python which make it a popular programming language are:
- **Readability:** It’s software has a highly readable code, which is easier to maintain, reuse the existing code and update a software. 
- **Portability:** Python is platform independent.
- **Vast support of libraries:** Python has a large collection of in-built functionalities known as standard library functions. Python also supports various third-party software like NumPy. 
""",
  'Python comments': """
Comments can be used to explain Python code. It can be used to make the code more readable. Comments start with a `#`.
```python
print("Hello, World!") # This is a Comment
```
""",
  'Keywords': """Keywords
Keywords are the reserved words that are already defined by the Python for specific uses. It cannot be used for naming objects. Some of the keywords are:

| | | | | | | |
|---|---|---|---|---|---|---|
| False | class | finally | is | return | None | for |
| else | if | del | or | def | True | try |
| elif | import | not | as | with | do | while |
""",
  'Variables': """
Variables are used to store data values. The following are the rules to create a variable:
- A variable name can begin with letters (A-z) or an underscore (_).
- It must not begin with numbers and also cannot be a keyword (for, while, etc.).
- It may contain alphanumeric characters. Special characters (@, #, %, !) are not allowed.
```python
Age = 10
_name = "Sri"
roll_no_1 = "Anu"
```
""",
  'Data type': """**Data Types**

In Python, data types are classifications that specify which type of value a variable can hold. The following are the primary data types in Python.

**String (`str`)**
A string is a sequence of characters, created using single, double, or triple quotes.
```python
a = "Hello"
print(type(a))
# <class 'str'>
```

**Integer (`int`)**
Represents whole numbers, both positive and negative, including 0.
```python
a = 10
print(type(a))
# <class 'int'>
```

**Float (`float`)**
Represents numbers with a decimal point.
```python
a = 2.5
print(type(a))
# <class 'float'>
```

**Complex (`complex`)**
A number expressed in the form of `a+bj`, where 'a' and 'b' are real numbers, and 'j' is an imaginary unit.
```python
a = 2 + 4j
print(type(a))
# <class 'complex'>
```

**Boolean (`bool`)**
Represents one of two values: `True` or `False`.
```python
a = True
print(type(a))
# <class 'bool'>
```
""",
  'Operators': """**Operators**
Operators are special symbols that perform operations on variables and values.
- **Assignment:** `=`
- **Arithmetic:** `+`, `-`, `*`, `/`, `//`, `%`, `**`
- **Comparison:** `==`, `!=`, `>`, `<`, `>=`, `<=`
- **Logical:** `and`, `or`, `not`
- **Bitwise:** `&`, `|`, `^`, `~`, `<<`, `>>`
""",
  'Classes and objects': """**Classes and Objects**
- **Class:** A blueprint for creating objects. Created using the `class` keyword.
- **Object:** An instance of a class, with its own properties and methods.
```python
class Dog:
  sound = "bark"

dog1 = Dog()
print(dog1.sound) # Output: bark
```
""",
  'Encapsulation': """**Encapsulation**
Encapsulation hides the internal details of a class, protecting data from direct outside modification. Private variables are prefixed with a double underscore `__`.
```python
class Employee:
    def __init__(self, name, salary):
        self.name = name          # public attribute
        self.__salary = salary    # private attribute

emp = Employee("Fedrick", 50000)
# print(emp.__salary) # This would cause an AttributeError
```
""",
  'Polymorphism': """**Polymorphism**
Polymorphism allows objects of different classes to be treated as objects of a common superclass. It enables a single function or method to work with different types of objects.
""",
  'inheritance': """**Inheritance**
Inheritance allows a new class (child class) to inherit attributes and methods from an existing class (parent class).
```python
class Animal:
    def __init__(self, name):
        self.name = name

class Dog(Animal): # Dog inherits from Animal
    def bark(self):
        print("Woof!")

d = Dog("Buddy")
print(d.name) # Accessing inherited attribute
```
""",

  // Unit 2: Control & Functions
  'Control statement': """**Control Statements**

Control statements are used to alter the flow of execution in a program.

- **`if`:** Executes code if a condition is true.
- **`elif`:** Checks another condition if the previous `if` was false.
- **`else`:** Executes code if all preceding conditions were false.
```python
score = 75
if score >= 90:
    print("Grade: A")
elif score >= 80:
    print("Grade: B")
else:
    print("Grade: C")
```
""",
  'For loop': """**The `for` Loop**
A `for` loop iterates over a sequence (like a list, string, or tuple).
```python
fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)
```
""",
  'While loop': """**The `while` Loop**
A `while` loop executes a block of code as long as its condition remains true.
```python
count = 0
while count < 5:
    print(count)
    count += 1
```
""",
  'String': """**String**
A string is a sequence of characters. They are immutable and can be created with single, double, or triple quotes.
""",
  'Slicing': """**Slicing**
Slicing extracts a portion of a sequence. The syntax is `[start:end]`, where `end` is non-inclusive.
```python
s = "Python"
print(s[0:2]) # Output: Py
```
""",
  'String traversal': """**String Traversal**
This means accessing characters in a string one by one, typically with a loop.
```python
for char in "Python":
    print(char)
```
""",
  'Escape character': """**Escape Characters**
An escape character is a backslash \ used to insert special characters.
| Sequence | Meaning |
|---|---|
| `\n` | Newline |
| `\t` | Tab |
| `\"` | Double Quote |
| `\\` | Backslash |
""",
  'String formatting operator and function': """**String Formatting**
- **f-Strings (Modern):** `print(f"Hello, {name}")`
- **`.format()` method:** `print("Hello, {}".format(name))`
- **% operator (Old):** `print("Hello, %s" % name)`
""",
  'Function': """**Functions**
A function is a reusable block of code defined with the `def` keyword.
""",
  'Build in function': """**Built-in Functions**
Functions that are always available, like `print()`, `len()`, `type()`, and `input()`.
""",
  'User defined function': """**User-Defined Functions**
Functions you create yourself to perform specific tasks.
```python
def greet(name):
    return f"Hello, {name}!"

print(greet("World"))
```
""",

  // Unit 3: Data Structures
  'Tuples': """**Tuples**
Tuples are immutable ordered collections defined using parentheses. Values can be accessed by indexing and slicing. Tuple assignment allows unpacking values into variables, and tuples can be returned from functions as multiple return values. Basic tuple operations include concatenation, repetition, membership testing, and iteration.
""",
  'Creating Tuples': """**Creating Tuples**
```python
my_tuple = (1, 2, 'a')
single_item_tuple = (1,) # Comma is required
```
""",
  'Accessing Values in Tuples': """**Accessing Tuple Values**
Use indexing `[ ]` to access elements.
```python
my_tuple = (10, 20, 30)
print(my_tuple[0]) # Output: 10
```
""",
  'Tuple Assignment': """**Tuple Assignment**
Unpack tuple values into multiple variables.
```python
a, b, c = (1, 2, 3)
```
""",
  'Tuples as Return Values': """**Tuples as Return Values**
Functions can return multiple values as a tuple.
```python
def get_point():
    return (10, 20)

x, y = get_point()
```
""",
  'Basic Tuple Operations': """**Basic Tuple Operations**
- **Concatenation:** `(1, 2) + (3, 4)` results in `(1, 2, 3, 4)`.
- **Repetition:** `(1,) * 3` results in `(1, 1, 1)`.
""",
  'Built-in Tuple Functions': """**Built-in Tuple Functions**
`len()`, `max()`, `min()`, `sum()`, `tuple()`.
""",
  'Lists': """**Lists**
Lists are mutable (changeable), ordered collections, defined with square brackets `[]`.
""",
  'Values and Accessing Elements': """**Accessing List Elements**
Use indexing and slicing, just like with strings and tuples.
""",
  'Traversing a List': """**Traversing a List**
Iterate through elements using a `for` loop.
""",
  'Deleting Elements from List': """**Deleting List Elements**
- **`del my_list[i]`:** Removes by index.
- **`.remove(value)`:** Removes the first matching value.
- **`.pop(i)`:** Removes and returns the element at index `i`.
""",
  'Built-in List Operators & Methods': """**List Methods**
`.append()`, `.extend()`, `.insert()`, `.sort()`, `.reverse()`, `.clear()`.
""",
  'Dictionaries': """**Dictionaries**
A dictionary is a mutable, unordered collection of key-value pairs, defined with curly braces `{}`.
""",
  'Creating a Dictionary': """**Creating a Dictionary**
```python
my_dict = {'name': 'Alice', 'age': 30}
```
""",
  'Accessing Values': """**Accessing Dictionary Values**
Use the key in square brackets `[]` or with the `.get()` method.
```python
print(my_dict['name']) # Output: Alice
```
""",
  'Updating and Adding Elements': """**Updating and Adding Elements**
Assign a value to a new or existing key.
```python
my_dict['age'] = 31
my_dict['city'] = 'New York'
```
""",
  'Deleting Elements': """**Deleting Dictionary Elements**
- **`del my_dict[key]`**
- **`.pop(key)`**
- **`.clear()`**
""",
  'Dictionary Operations': """**Dictionary Operations**
- Check for a key with `in`.
- Get the number of items with `len()`.
""",
  'Built-in Dictionary Methods': """**Dictionary Methods**
`.keys()`, `.values()`, `.items()`.
""",
  'File Handling & Exceptions': """**File Handling & Exceptions**
- **File Handling:** Involves opening, reading/writing, and closing files to store data permanently.
- **Exceptions:** Errors that occur during program execution. If not handled with `try...except`, they will crash the program.
""",
  'Introduction to File I/O': """**Introduction to File I/O**
Open files using `open('filename.txt', 'mode')`, where mode is 'r' (read), 'w' (write), or 'a' (append). Always close files with `file.close()`.
""",
  'Using Loops to Process Files': """**Processing Files with Loops**
Iterate through a file line-by-line to save memory.
```python
file = open("data.txt")
for line in file:
    print(line.strip())
file.close()
```
""",
  'Processing Records (CSV)': """**Processing Records (CSV)**
CSV files store tabular data. Process them by reading each line, stripping whitespace, and splitting by the delimiter (usually a comma).
""",
  'Exceptions': """**Exceptions**
Handle potential errors gracefully using a `try...except` block.
```python
try:
    file = open("non_existent.txt", "r")
except FileNotFoundError:
    print("File not found!")
```
""",

  // Unit 4
  'Data manipulation tools and softwares': '''**Data Manipulation Tools and Software**
NumPy is the foundational library for scientific computing in Python, providing a powerful N-dimensional array object (ndarray) and tools for working with these arrays.
''',
  'NumPy Installation': '''**NumPy Installation**
The recommended way to install NumPy is using Python\'s package installer, pip.
```bash
pip install numpy
```
After installation, it is standard practice to import the library and alias it as `np`.
```python
import numpy as np
```
''',
  'ndarray Basics': '''**ndarray Basics**
The ndarray is the central object of NumPy. It is a grid of values of the same type. Key attributes include:
- `.shape`: The size of the array in each dimension.
- `.ndim`: The number of dimensions.
- `.dtype`: The data type of the elements.
- `.size`: The total number of elements.
''',
  'Basic Operations': '''**Basic Operations**
Arithmetic operations (`+`, `-`, `*`, `/`) are applied element-wise. Use the `@` operator for matrix multiplication.
''',
  'Indexing, Slicing, and Iterating': '''**Indexing, Slicing, and Iterating**
Access elements using integer indices `[row, col]` and slices `[start:stop]`. Slicing creates a *view* of the original array, so modifications affect the original. Use `.copy()` to create a true copy.
''',
  'Shape and Array Manipulation': '''**Shape and Array Manipulation**
Change an array\'s dimensions with `.reshape()`, flatten it with `.ravel()`, or transpose it with `.T`.
''',
  'Array Manipulation': '''**Array Manipulation**
- **Joining:** `np.concatenate()`, `np.vstack()` (vertical), `np.hstack()` (horizontal).
- **Splitting:** `np.split()`, `np.hsplit()`, `np.vsplit()`.
''',
  'Structured Arrays': '''**Structured Arrays**
Structured arrays allow columns to have different data types, similar to a spreadsheet. You define the structure using a `dtype`.
''',
  'Reading and Writing Array Data on Files': '''**Reading and Writing Array Data**
- **Text:** `np.loadtxt()` and `np.savetxt()`.
- **Binary:** Use `np.save()` and `np.load()` for efficient `.npy` format storage.
''',
  'The Pandas Library: An Introduction': '''**The Pandas Library: An Introduction**
Pandas is a library for data analysis built on NumPy. It excels at handling tabular data using its primary data structures: the `Series` and `DataFrame`.
''',
  'Pandas Installation': '''**Pandas Installation**
Install using pip:
```bash
pip install pandas
```
Import with the alias `pd`:
```python
import pandas as pd
```
''',
  'Introduction to pandas Data Structures': '''**Introduction to pandas Data Structures**
- **`Series`:** A one-dimensional labeled array.
- **`DataFrame`:** A two-dimensional labeled data structure, like a spreadsheet or SQL table.
''',
  'Operations Between Data Structures': '''**Operations Between Data Structures**
Pandas automatically aligns data based on index labels when performing operations. Unmatched labels result in `NaN` (Not a Number).
''',
  'Function Application and Mapping': '''**Function Application and Mapping**
- **`.apply()`:** Applies a function along an axis.
- **`.map()`:** Used on a Series for element-wise transformation.
- **`.applymap()`:** Applies a function to every element in a DataFrame.
''',
  'Sorting and Ranking': '''**Sorting and Ranking**
- **`.sort_values()`:** Sorts a DataFrame by values in columns.
- **`.rank()`:** Assigns ranks to entries.
''',
  'Correlation and Covariance': '''**Correlation and Covariance**
- **`.corr()`:** Computes the correlation between columns.
- **`.cov()`:** Computes the covariance between columns.
''',
  '“Not a Number” Data': '''**Handling Missing Data (NaN)**
Missing data is represented as `NaN`. Use `.isnull()` to detect, `.dropna()` to remove, and `.fillna()` to replace missing values.
''',
  'Hierarchical Indexing and Leveling': '''**Hierarchical Indexing (MultiIndex)**
Allows you to have multiple index levels on an axis, enabling higher-dimensional data analysis in a 2D structure.
''',
  'Reading and Writing Data': '''**Reading and Writing Data**
Pandas excels at I/O.
- **CSV:** `pd.read_csv()`, `df.to_csv()`
- **Excel:** `pd.read_excel()`, `df.to_excel()`
- **HTML:** `pd.read_html()`
''',

  // Unit 5
  'Data Analysis with Python: Importing Datasets': """**Importing Datasets in Python**

**Introduction**
Importing datasets is the first step in data analysis. Python provides libraries like pandas to read data from various file types such as CSV, Excel, and JSON.

**Why We Import Data**
- To analyze real-world data
- To build ML models

**Common Methods**
- `pd.read_csv()`
- `pd.read_excel()`
- `pd.read_json()`
""",
  'Cleaning and Preparing the Data: Identify and Handle Missing Values': """**Cleaning and Preparing Data**

**Introduction**
Raw data often contains errors, missing values, and duplicates. Data cleaning is the process of fixing these issues to prepare the data for analysis.

**Key Steps**
- **Remove Duplicates:** `df.drop_duplicates()`
- **Handle Missing Values:** Remove rows with `.dropna()` or fill them using `.fillna()` with a mean, median, or other value.
- **Convert Data Types:** Use `.astype()` to change a column’s data type.
""",
  'Data Formatting': """**Data Formatting**

Data formatting means cleaning and converting data into a consistent, standard form. Real-world data is often messy (e.g., inconsistent casing, extra spaces, different date formats). Formatting makes data clean, uniform, and usable.

**Common Tasks**
- **Convert to Lowercase:** `df["name"].str.lower()`
- **Remove Whitespaces:** `df["name"].str.strip()`
- **Format Dates:** `pd.to_datetime(df["date"])`
- **Replace Values:** `df['gender'].replace({"M": "Male"})`
""",
  'Dimension Reduction': """**Dimension Reduction**

Dimension reduction means reducing the number of columns (features) in a dataset while keeping the most important information. It speeds up ML models, removes noise, and helps in visualizing high-dimensional data.

**Methods**
- **PCA (Principal Component Analysis):** Combines features into a smaller number of new, powerful features.
- **Feature Selection:** Choosing only the most important features.
""",
  'Feature Extraction': """**Feature Extraction**

Feature extraction means creating new, more meaningful features from raw data.

**Examples**
- **TF-IDF:** Converts text into numbers that ML models can understand.
- **Image Features:** Extracting edges, corners, or shapes from images.
- **Feature Engineering:** Creating new features from existing ones (e.g., calculating BMI from height and weight).
""",
};
