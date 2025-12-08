
final Map<String, List<Map<String, dynamic>>> unit4QuizData = {
  'NumPy Installation': [
    {
      'question': 'What is the correct command to install NumPy?',
      'answers': ['install numpy', 'pip install numpy', 'run numpy'],
      'correctAnswer': 'pip install numpy',
    },
    {
      'question': 'Which distribution already includes NumPy by default?',
      'answers': ['Anaconda', 'Chrome', 'Android SDK'],
      'correctAnswer': 'Anaconda',
    },
    {
      'question': 'Which import statement is commonly used?',
      'answers': ['import numpy', 'import numpy as pd', 'import numpy as np'],
      'correctAnswer': 'import numpy as np',
    },
  ],
  'ndarray Basics': [
    {
      'question': 'The ndarray in NumPy is:',
      'answers': ['A text editor', 'A multi-dimensional array', 'A database'],
      'correctAnswer': 'A multi-dimensional array',
    },
    {
      'question': 'Which attribute gives total number of elements?',
      'answers': ['.shape', '.size', '.dtype'],
      'correctAnswer': '.size',
    },
    {
      'question': 'Which function creates an array from a Python list?',
      'answers': ['np.make()', 'np.array()', 'np.build()'],
      'correctAnswer': 'np.array()',
    },
  ],
  'Basic Operations': [
    {
      'question': 'Element-wise multiplication in NumPy uses:',
      'answers': ['&', '*', '%'],
      'correctAnswer': '*',
    },
    {
      'question': 'Matrix multiplication is done using:',
      'answers': ['@', '^', '#'],
      'correctAnswer': '@',
    },
    {
      'question': 'Which function is a universal function (ufunc)?',
      'answers': ['np.open()', 'np.sin()', 'np.menu()'],
      'correctAnswer': 'np.sin()',
    },
  ],
  'Indexing, Slicing, and Iterating': [
    {
      'question': 'arr[1:4] represents:',
      'answers': ['Rows only', 'Slice from index 1 to 3', 'Delete values'],
      'correctAnswer': 'Slice from index 1 to 3',
    },
    {
      'question': 'To iterate through array elements more efficiently:',
      'answers': ['np.nditer()', 'np.edit()', 'np.loop()'],
      'correctAnswer': 'np.nditer()',
    },
    {
      'question': 'What is the output of the following code?\n\nimport numpy as np\narr = np.array([10, 20, 30, 40, 50])\nprint(arr[arr > 25])',
      'answers': ['[30 40 50]', '[10 20]', 'Error'],
      'correctAnswer': '[30 40 50]',
    },
  ],
  'Shape and Array Manipulation': [
    {
      'question': 'Which is used to reshape an array?',
      'answers': ['arr.change()', 'arr.reshape()', 'arr.modify()'],
      'correctAnswer': 'arr.reshape()',
    },
    {
      'question': 'arr.ravel() returns:',
      'answers': ['A 2D array', 'A reversed array', 'A flattened 1D array'],
      'correctAnswer': 'A flattened 1D array',
    },
    {
      'question': 'arr.T refers to:',
      'answers': ['Time', 'Transpose of the array', 'Test mode'],
      'correctAnswer': 'Transpose of the array',
    },
  ],
  'Array Manipulation': [
    {
      'question': 'Which function joins arrays along an existing axis?',
      'answers': ['np.join()', 'np.concatenate()', 'np.attach()'],
      'correctAnswer': 'np.concatenate()',
    },
    {
      'question': 'To split an array:',
      'answers': ['np.divide()', 'np.cut()', 'np.split()'],
      'correctAnswer': 'np.split()',
    },
    {
      'question': 'What is the output of the following code?\n\nimport numpy as np\na = np.array([1, 2, 3])\nb = np.array([4, 5, 6])\nprint(np.hstack((a, b)))',
      'answers': ['[1 2 3 4 5 6]', '[[1 2 3]\n[4 5 6]]', '[1 4 2 5 3 6]'],
      'correctAnswer': '[1 2 3 4 5 6]',
    },
  ],
  'Structured Arrays': [
    {
      'question': 'Structured arrays allow:',
      'answers': ['Multiple data types per row', 'Only integers', 'Only strings'],
      'correctAnswer': 'Multiple data types per row',
    },
    {
      'question': 'Structured array fields are defined using:',
      'answers': ['np.shape', 'dtype', 'np.rows'],
      'correctAnswer': 'dtype',
    },
    {
      'question': 'Accessing a column in structured arrays is done by:',
      'answers': ['data.field()', 'data[\'name\']', 'data.col()'],
      'correctAnswer': 'data[\'name\']',
    },
  ],
  'Reading and Writing Array Data on Files': [
    {
      'question': 'Which function saves an array in .npy format?',
      'answers': ['np.store()', 'np.save()', 'np.write()'],
      'correctAnswer': 'np.save()',
    },
    {
      'question': 'Which function is used to read data from a text/CSV file?',
      'answers': ['np.import()', 'np.read()', 'np.loadtxt()'],
      'correctAnswer': 'np.loadtxt()',
    },
    {
      'question': 'Which NumPy function should be used to save multiple arrays into a single file?\n\nimport numpy as np\n\na = np.array([1, 2, 3])\nb = np.array([4, 5, 6])\n\n# Which function should go here?',
      'answers': ['np.save()', 'np.savez()', 'np.store_all()'],
      'correctAnswer': 'np.savez()',
    },
  ],
  'Pandas Installation': [
    {
      'question': 'Which command is used to install Pandas using pip?',
      'answers': ['pip get pandas', 'pip install pandas', 'install pandas'],
      'correctAnswer': 'pip install pandas',
    },
    {
      'question': 'What is the commonly used alias for Pandas in Python programs?',
      'answers': ['import pandas as ps', 'import pandas as pds', 'import pandas as pd'],
      'correctAnswer': 'import pandas as pd',
    },
    {
      'question': 'What does the following code do?\n\nimport pandas as pd',
      'answers': ['Installs pandas', 'Imports pandas and assigns alias pd', 'Converts data to a DataFrame'],
      'correctAnswer': 'Imports pandas and assigns alias pd',
    },
  ],
  'Introduction to pandas Data Structures': [
    {
      'question': 'A one-dimensional labeled array in pandas is called:',
      'answers': ['DataFrame', 'Series', 'Matrix'],
      'correctAnswer': 'Series',
    },
    {
      'question': 'A DataFrame can be considered as:',
      'answers': ['A list of lists', 'A dictionary of Series', 'A single column array'],
      'correctAnswer': 'A dictionary of Series',
    },
    {
      'question': 'What does this code create?\n\npd.DataFrame({\'A\':[1,2], \'B\':[3,4]})',
      'answers': ['Series', '2×2 DataFrame', 'Empty DataFrame'],
      'correctAnswer': '2×2 DataFrame',
    },
  ],
  'Operations Between Data Structures': [
    {
      'question': 'What happens when two Series have unmatched indexes during addition?',
      'answers': ['Values are ignored', 'Error occurs', 'Result contains NaN for unmatched labels'],
      'correctAnswer': 'Result contains NaN for unmatched labels',
    },
    {
      'question': 'Pandas aligns data during operations based on:',
      'answers': ['Position', 'Index labels', 'Data type'],
      'correctAnswer': 'Index labels',
    },
    {
      'question': 'What does this code perform?\n\ns1 + s2',
      'answers': ['Adds values by index alignment', 'Adds values by position', 'Throws an exception'],
      'correctAnswer': 'Adds values by index alignment',
    },
  ],
  'Function Application and Mapping': [
    {
      'question': 'Which method applies a function to every element of a DataFrame?',
      'answers': ['apply()', 'map()', 'applymap()'],
      'correctAnswer': 'applymap()',
    },
    {
      'question': 'The map() function is used with:',
      'answers': ['DataFrame', 'Series', 'Only numeric values'],
      'correctAnswer': 'Series',
    },
    {
      'question': 'What does this code do?\n\ndf[\'A\'].apply(lambda x: x * 2)',
      'answers': ['Multiplies each value of column A by 2', 'Multiplies entire DataFrame', 'Sorts column A'],
      'correctAnswer': 'Multiplies each value of column A by 2',
    },
  ],
  'Sorting and Ranking': [
    {
      'question': 'Which function sorts a DataFrame by column values?',
      'answers': ['sort_labels()', 'sort_values()', 'sort_index()'],
      'correctAnswer': 'sort_values()',
    },
    {
      'question': 'The rank() function is used to:',
      'answers': ['Sort data', 'Assign rank based on values', 'Remove missing values'],
      'correctAnswer': 'Assign rank based on values',
    },
    {
      'question': 'What does this code do?\n\ndf.sort_values(\'Population\')',
      'answers': ['Sorts rows by index', 'Sorts rows by Population column', 'Renames the column'],
      'correctAnswer': 'Sorts rows by Population column',
    },
  ],
  'Correlation and Covariance': [
    {
      'question': 'The corr() function measures:',
      'answers': ['Data size', 'Linear relationship between columns', 'Conversion of data types'],
      'correctAnswer': 'Linear relationship between columns',
    },
    {
      'question': 'Covariance indicates:',
      'answers': ['Exact prediction of values', 'Whether two variables rise/fall together', 'Removal of NaN values'],
      'correctAnswer': 'Whether two variables rise/fall together',
    },
    {
      'question': 'What does this code generate?\n\ndf.corr()',
      'answers': ['A correlation matrix', 'A scatter plot', 'A ranked list'],
      'correctAnswer': 'A correlation matrix',
    },
  ],
  '“Not a Number” Data': [
    {
      'question': 'NaN in pandas represents:',
      'answers': ['Infinite value', 'Missing or undefined data', 'Zero'],
      'correctAnswer': 'Missing or undefined data',
    },
    {
      'question': 'Which function removes rows with ANY NaN values?',
      'answers': ['remove()', 'dropna()', 'delete()'],
      'correctAnswer': 'dropna()',
    },
    {
      'question': 'What does this do?\n\ndf.fillna(0)',
      'answers': ['Removes all NaN values', 'Replaces NaN with 0', 'Sorts the DataFrame'],
      'correctAnswer': 'Replaces NaN with 0',
    },
  ],
  'Hierarchical Indexing and Leveling': [
    {
      'question': 'MultiIndex allows:',
      'answers': ['Only one index', 'Multiple levels of indexing', 'Only numeric indexing'],
      'correctAnswer': 'Multiple levels of indexing',
    },
    {
      'question': 'Which method creates a MultiIndex from tuples?',
      'answers': ['pd.MultiIndex.from_dict()', 'pd.MultiIndex.from_tuples()', 'pd.MultiIndex.build()'],
      'correctAnswer': 'pd.MultiIndex.from_tuples()',
    },
    {
      'question': 'What does this return?\n\ns_multi.loc[\'Europe\']',
      'answers': ['Only Japan data', 'All rows where outer index = Europe', 'An error'],
      'correctAnswer': 'All rows where outer index = Europe',
    },
  ],
  'Reading and Writing Data': [
    {
      'question': 'Which function reads a CSV file?',
      'answers': ['pd.read_file()', 'pd.read_csv()', 'pd.load_csv()'],
      'correctAnswer': 'pd.read_csv()',
    },
    {
      'question': 'To save a DataFrame to Excel, we use:',
      'answers': ['df.store_excel()', 'df.save()', 'df.to_excel()'],
      'correctAnswer': 'df.to_excel()',
    },
    {
      'question': 'What does this code do?\n\npd.read_html(\'page.html\')',
      'answers': ['Reads HTML tables into a list of DataFrames', 'Reads only CSV files', 'Converts HTML to JSON'],
      'correctAnswer': 'Reads HTML tables into a list of DataFrames',
    },
  ],
};
