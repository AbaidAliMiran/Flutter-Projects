class QuestionModel {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  QuestionModel({
    required this.question,
    required this.options,
    required this.correctAnswerIndex,
  });
}

List<QuestionModel> easy_questions_model = [
  QuestionModel(
    question: "What color do you get by mixing red and white?",
    options: ["Purple", "Pink", "Orange", "Brown"],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    question: "Which animal is known for its long neck?",
    options: ["Elephant", "Giraffe", "Tiger", "Lion"],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    question: "What is the boiling point of water?",
    options: ["50°C", "75°C", "100°C", "125°C"],
    correctAnswerIndex: 2,
  ),
  QuestionModel(
    question: "Which planet is closest to the Sun?",
    options: ["Venus", "Earth", "Mars", "Mercury"],
    correctAnswerIndex: 3,
  ),
  QuestionModel(
    question: "How many sides does a triangle have?",
    options: ["2", "3", "4", "5"],
    correctAnswerIndex: 1,
  ),
];

List<QuestionModel> medium_questions_model = [
  QuestionModel(
    question: "Who is known as the father of modern physics?",
    options: [
      "Isaac Newton",
      "Albert Einstein",
      "Galileo Galilei",
      "Nikola Tesla"
    ],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    question: "What is the capital of Japan?",
    options: ["Kyoto", "Tokyo", "Osaka", "Hiroshima"],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    question: "Which gas is most abundant in Earth's atmosphere?",
    options: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"],
    correctAnswerIndex: 2,
  ),
  QuestionModel(
    question: "What is the smallest country in the world?",
    options: ["Monaco", "San Marino", "Liechtenstein", "Vatican City"],
    correctAnswerIndex: 3,
  ),
  QuestionModel(
    question: "What is the hardest natural substance on Earth?",
    options: ["Gold", "Iron", "Diamond", "Quartz"],
    correctAnswerIndex: 2,
  ),
];

List<QuestionModel> hard_questions_model = [
  QuestionModel(
    question: "Which element has the atomic number 79?",
    options: ["Silver", "Gold", "Platinum", "Copper"],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    question: "In which year did the French Revolution begin?",
    options: ["1789", "1792", "1776", "1804"],
    correctAnswerIndex: 0,
  ),
  QuestionModel(
    question: "What is the capital of Kazakhstan?",
    options: ["Almaty", "Astana", "Tashkent", "Bishkek"],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    question:
        "Which famous scientist developed the laws of motion and universal gravitation?",
    options: [
      "Niels Bohr",
      "Isaac Newton",
      "Michael Faraday",
      "James Clerk Maxwell"
    ],
    correctAnswerIndex: 1,
  ),
  QuestionModel(
    question: "What is the longest river in Africa?",
    options: ["Nile", "Congo", "Niger", "Zambezi"],
    correctAnswerIndex: 0,
  ),
];
