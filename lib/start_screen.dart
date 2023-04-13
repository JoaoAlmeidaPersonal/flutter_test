import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.switchScreen, {Key? key}) : super(key: key);

  final void Function() switchScreen;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 40),
          OutlinedButton.icon(
            onPressed: () {
              switchScreen();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.play_arrow),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}

// class StartScreen extends StatelessWidget {
//   const StartScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(top: 120),
//       child: Column(
//         children: [
//           Image.asset('assets/images/quiz-logo.png'),
//           Container(
//             margin: const EdgeInsets.only(top: 40),
//             child: const Text(
//               'Welcome to the Quiz App',
//               style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black),
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.only(top: 30),
//             child: const ElevatedButton(
//               onPressed: null,
//               style: ButtonStyle(
//                 fixedSize: MaterialStatePropertyAll(Size(200, 50)),
//                 backgroundColor: MaterialStatePropertyAll(Colors.amber),
//               ),
//               child: Text(
//                 'Start Quiz',
//                 style: TextStyle(fontSize: 30),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
