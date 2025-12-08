
final Map<String, List<Map<String, dynamic>>> unit3QuizData = {
  'Creating Tuples': [
    {
      'question': 'Which of the following represents a single-element tuple?',
      'answers': ['(5)', '(5,)', '[5]', '{5}'],
      'correctAnswer': '(5,)',
    },
    {
      'question': 'What is used to separate elements inside a tuple?',
      'answers': ['Colon', 'Semicolon', 'Comma', 'Slash'],
      'correctAnswer': 'Comma',
    },
    {
      'question': 'Which one is an empty tuple?',
      'answers': ['[]', '()', '{}', '(None)'],
      'correctAnswer': '()',
    },
  ],
  'Accessing Values in Tuples': [
    {
      'question': 'What does my_tuple[-1] return for (10, 20, 30, 40)?',
      'answers': ['10', '20', '30', '40'],
      'correctAnswer': '40',
    },
    {
      'question': 'What is the output of my_tuple[1:3]?',
      'answers': ['(10, 20)', '(20, 30)', '(30, 40)', '(10, 30)'],
      'correctAnswer': '(20, 30)',
    },
    {
      'question': 'Tuple indexing starts from:',
      'answers': ['1', '0', '-1', '10'],
      'correctAnswer': '0',
    },
  ],
  'Tuple Assignment': [
    {
      'question': 'What is tuple unpacking?',
      'answers': ['Assigning one value to multiple variables', 'Assigning multiple values to multiple variables', 'Converting tuple to list', 'Deleting a tuple'],
      'correctAnswer': 'Assigning multiple values to multiple variables',
    },
    {
      'question': 'What is the value of b in a, b, c = (1, 2, 3)?',
      'answers': ['1', '2', '3', 'Error'],
      'correctAnswer': '2',
    },
    {
      'question': 'Which of the following is valid unpacking?',
      'answers': ['a, b = (1, 2)', 'a = (1, 2)', 'a, b, c = (1, 2)', 'a : b = (1, 2)'],
      'correctAnswer': 'a, b = (1, 2)',
    },
  ],
  'Tuples as Return Values': [
    {
      'question': 'What type is returned when a function returns 10, 20?',
      'answers': ['list', 'set', 'tuple', 'dictionary'],
      'correctAnswer': 'tuple',
    },
    {
      'question': 'In Python, multiple return values are grouped as a:',
      'answers': ['tuple', 'list', 'string', 'array'],
      'correctAnswer': 'tuple',
    },
    {
      'question': 'How are multiple return values separated?',
      'answers': ['Semicolon', 'Comma', 'Slash', 'Dot'],
      'correctAnswer': 'Comma',
    },
  ],
  'Basic Tuple Operations': [
    {
      'question': 'What is the result of (1, 2) + (3, 4)?',
      'answers': ['(1, 2, 3, 4)', '[1, 2, 3, 4]', '(1, 2)(3, 4)', 'Error'],
      'correctAnswer': '(1, 2, 3, 4)',
    },
    {
      'question': '(1, 2) * 2 gives:',
      'answers': ['(1, 2)', '(1, 1, 2, 2)', '(1, 2, 1, 2)', 'Error'],
      'correctAnswer': '(1, 2, 1, 2)',
    },
    {
      'question': 'Which operator checks if an element is present in a tuple?',
      'answers': ['==', 'in', '+', '*'],
      'correctAnswer': 'in',
    },
  ],
  'Built-in Tuple Functions': [
    {
      'question': 'Which function converts a list into a tuple?',
      'answers': ['list()', 'tuple()', 'convert()', 'change()'],
      'correctAnswer': 'tuple()',
    },
    {
      'question': 'What does len((1,2,3,4)) return?',
      'answers': ['3', '4', '2', '1'],
      'correctAnswer': '4',
    },
    {
      'question': 'sum((1,2,3)) gives:',
      'answers': ['5', '6', '3', 'Error'],
      'correctAnswer': '6',
    },
  ],
  'Values and Accessing Elements': [
    {
      'question': 'Lists are enclosed within:',
      'answers': ['()', '[]', '{}', '<>'],
      'correctAnswer': '[]',
    },
    {
      'question': 'my_list[1] gives:',
      'answers': ['1', 'apple', '3.14', 'Error'],
      'correctAnswer': 'apple',
    },
    {
      'question': 'What is [1,2,3][0:2]?',
      'answers': ['[1,2]', '[2,3]', '[3]', '[]'],
      'correctAnswer': '[1,2]',
    },
  ],
  'Traversing a List': [
    {
      'question': 'Which loop is commonly used to traverse a list?',
      'answers': ['for', 'while', 'do-while', 'switch'],
      'correctAnswer': 'for',
    },
    {
      'question': 'Traversing means:',
      'answers': ['Deleting elements', 'Accessing each element', 'Sorting elements', 'Copying elements'],
      'correctAnswer': 'Accessing each element',
    },
    {
      'question': 'During traversal, each element is accessed:',
      'answers': ['Randomly', 'One by one', 'In reverse only', 'Skipping the first'],
      'correctAnswer': 'One by one',
    },
  ],
  'Deleting Elements from List': [
    {
      'question': 'Which method removes by value?',
      'answers': ['del', 'pop', 'remove', 'clear'],
      'correctAnswer': 'remove',
    },
    {
      'question': 'pop() without index removes:',
      'answers': ['First element', 'Middle element', 'Last element', 'No element'],
      'correctAnswer': 'Last element',
    },
    {
      'question': 'del numbers[0] removes:',
      'answers': ['Last element', 'Second element', 'First element', 'All elements'],
      'correctAnswer': 'First element',
    },
  ],
  'Built-in List Operators & Methods': [
    {
      'question': 'Which method adds an element at the end of a list?',
      'answers': ['insert()', 'append()', 'extend()', 'push()'],
      'correctAnswer': 'append()',
    },
    {
      'question': 'Which operator is used to repeat a list?',
      'answers': ['+', '*', 'in', '%'],
      'correctAnswer': '*',
    },
    {
      'question': 'Which method removes all items from the list?',
      'answers': ['clear()', 'remove()', 'delete()', 'pop()'],
      'correctAnswer': 'clear()',
    },
  ],
  'Creating a Dictionary': [
    {
      'question': 'Which of the following creates an empty dictionary?',
      'answers': ['[]', '{}', '()', 'dict([])'],
      'correctAnswer': '{}',
    },
    {
      'question': 'In a Python dictionary, keys must be:',
      'answers': ['Mutable', 'Unique and immutable', 'Only strings', 'Duplicated'],
      'correctAnswer': 'Unique and immutable',
    },
    {
      'question': 'dict([("a", 1), ("b", 2)]) creates:',
      'answers': ['A list', 'A tuple', 'A dictionary', 'A set'],
      'correctAnswer': 'A dictionary',
    },
  ],
  'Accessing Values': [
    {
      'question': 'Which method prevents a KeyError while accessing dictionary values?',
      'answers': ['[]', '.add()', '.get()', '.pop()'],
      'correctAnswer': '.get()',
    },
    {
      'question': 'Output of {"a":10}.get("b")?',
      'answers': ['10', 'b', 'None', 'Error'],
      'correctAnswer': 'None',
    },
    {
      'question': 'person["name"] if key not present?',
      'answers': ['Returns None', 'Raises KeyError', 'Returns 0', 'Returns False'],
      'correctAnswer': 'Raises KeyError',
    },
  ],
  'Updating and Adding Elements': [
    {
      'question': 'Which statement updates the age key?',
      'answers': ['person("age") = 40', 'person["age"] = 40', 'person.age = 40', 'update.person = 40'],
      'correctAnswer': 'person["age"] = 40',
    },
    {
      'question': 'person.update({"city": "Delhi"}) does:',
      'answers': ['Deletes key', 'Adds/updates key', 'Creates tuple', 'Error'],
      'correctAnswer': 'Adds/updates key',
    },
    {
      'question': 'Updating a dictionary value is:',
      'answers': ['Impossible', 'Mutable operation', 'Only done using delete', 'Requires copying'],
      'correctAnswer': 'Mutable operation',
    },
  ],
  'Deleting Elements': [
    {
      'question': 'Which method removes a key and returns its value?',
      'answers': ['del', '.pop()', '.clear()', '.remove()'],
      'correctAnswer': '.pop()',
    },
    {
      'question': '.clear() does what?',
      'answers': ['Deletes one key', 'Deletes last item', 'Removes all items', 'Reverses dictionary'],
      'correctAnswer': 'Removes all items',
    },
    {
      'question': 'del person["age"] will:',
      'answers': ['Raise error if key missing', 'Always return value', 'Delete all keys', 'Convert dict to list'],
      'correctAnswer': 'Raise error if key missing',
    },
  ],
  'Dictionary Operations': [
    {
      'question': 'Which operator checks if a key exists?',
      'answers': ['exists', 'in', 'has', 'find'],
      'correctAnswer': 'in',
    },
    {
      'question': 'len({"a":1,"b":2,"c":3}) returns:',
      'answers': ['1', '3', '2', 'Error'],
      'correctAnswer': '3',
    },
    {
      'question': 'for key in person: loops through:',
      'answers': ['Values only', 'Keys only', 'Items', 'Sorted keys'],
      'correctAnswer': 'Keys only',
    },
  ],
  'Built-in Dictionary Methods': [
    {
      'question': 'Which method returns key-value pairs?',
      'answers': ['keys()', 'values()', 'items()', 'copy()'],
      'correctAnswer': 'items()',
    },
    {
      'question': 'd.copy() creates:',
      'answers': ['New independent copy', 'Deletes dictionary', 'Converts to list', 'Reverses dictionary'],
      'correctAnswer': 'New independent copy',
    },
    {
      'question': 'person.values() returns:',
      'answers': ['Only keys', 'Only values', 'Tuples', 'Numbers only'],
      'correctAnswer': 'Only values',
    },
  ],
  'Introduction to File I/O': [
    {
      'question': 'Which memory loses data when power is off?',
      'answers': ['Hard drive', 'SSD', 'RAM', 'ROM'],
      'correctAnswer': 'RAM',
    },
    {
      'question': 'Which mode overwrites an existing file?',
      'answers': ['r', 'w', 'a', 'rw'],
      'correctAnswer': 'w',
    },
    {
      'question': 'Why is closing a file important?',
      'answers': ['To increase file size', 'To flush data & release resources', 'To rename file', 'To protect deletion'],
      'correctAnswer': 'To flush data & release resources',
    },
  ],
  'Using Loops to Process Files': [
    {
      'question': 'Why process files line-by-line?',
      'answers': ['Increase file size', 'Reduce memory usage', 'Slow execution', 'Delete file'],
      'correctAnswer': 'Reduce memory usage',
    },
    {
      'question': 'strip() does:',
      'answers': ['Removes vowels', 'Removes whitespace/newline', 'Converts to uppercase', 'Adds spaces'],
      'correctAnswer': 'Removes whitespace/newline',
    },
    {
      'question': 'EOF stands for:',
      'answers': ['End of File', 'Execute on File', 'Error on File', 'Extra Output Format'],
      'correctAnswer': 'End of File',
    },
  ],
  'Processing Records (CSV)': [
    {
      'question': 'Which file type commonly stores comma-separated fields?',
      'answers': ['TXT', 'CSV', 'EXE', 'PDF'],
      'correctAnswer': 'CSV',
    },
    {
      'question': 'After splitting a CSV line, each item is stored as:',
      'answers': ['Number', 'Record', 'List/Array element', 'Boolean'],
      'correctAnswer': 'List/Array element',
    },
    {
      'question': 'Numeric fields in CSV must be:',
      'answers': ['Encrypted', 'Deleted', 'Converted from string to number', 'Reversed'],
      'correctAnswer': 'Converted from string to number',
    },
  ],
  'Exceptions': [
    {
      'question': 'Which occurs when opening a missing file in ‘r’ mode?',
      'answers': ['PermissionError', 'IOError', 'FileNotFoundError', 'SyntaxError'],
      'correctAnswer': 'FileNotFoundError',
    },
    {
      'question': 'Exception for insufficient access rights?',
      'answers': ['ValueError', 'PermissionError', 'TypeError', 'EOFError'],
      'correctAnswer': 'PermissionError',
    },
    {
      'question': 'Exceptions occur during:',
      'answers': ['Compilation', 'Runtime', 'Shutdown', 'Installation'],
      'correctAnswer': 'Runtime',
    },
  ],
};
