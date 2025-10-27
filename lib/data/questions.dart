class Question {
  final String text;
  final List<String> options;
  final int correctIndex;

  Question({
    required this.text,
    required this.options,
    required this.correctIndex,
  });
}

final List<Question> sampleQuestions = [
  Question(
    text: 'Apa kepanjangan dari CPU?',
    options: [
      'Central Process Unit',
      'Central Processing Unit',
      'Computer Performance Unit',
      'Control Processing Unit'
    ],
    correctIndex: 1,
  ),
  Question(
    text: 'Bahasa pemrograman yang berjalan di web browser adalah?',
    options: ['Dart', 'C++', 'JavaScript', 'Kotlin'],
    correctIndex: 2,
  ),
  Question(
    text: 'Manakah tipe data untuk bilangan bulat di Dart?',
    options: ['double', 'int', 'String', 'bool'],
    correctIndex: 1,
  ),
  Question(
    text: 'Apa yang dimaksud dengan UI?',
    options: ['User Interface', 'Universal Internet', 'Unique Identifier', 'Unit Integration'],
    correctIndex: 0,
  ),
  Question(
    text: 'Framework mobile yang dikembangkan oleh Google adalah?',
    options: ['React Native', 'Flutter', 'Xamarin', 'Ionic'],
    correctIndex: 1,
  ),
];
