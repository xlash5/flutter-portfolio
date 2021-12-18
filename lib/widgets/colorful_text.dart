// import 'package:flutter/material.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';

// final Shader linearGradient = const LinearGradient(
//   colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
// ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

// class ColorfulText extends StatelessWidget {
//   final String text;
//   const ColorfulText({
//     Key? key,
//     required this.text,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTextStyle(
//       style: const TextStyle(
//         fontSize: 30.0,
//         // foreground: Paint()..shader = linearGradient,
//         color: Color.fromARGB(255, 120, 76, 177),
//         fontWeight: FontWeight.w900,
//       ),
//       child: AnimatedTextKit(
//         animatedTexts: [
//           WavyAnimatedText(text),
//         ],
//         isRepeatingAnimation: true,
//         onTap: () {
//           print("Tap Event");
//         },
//       ),
//     );
//   }
// }
