import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ConsoleWindow extends StatelessWidget {
  const ConsoleWindow({
    Key? key,
    required bool showText,
    required bool show,
  })  : _showText = showText,
        _show = show,
        super(key: key);

  final bool _showText;
  final bool _show;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Column(
        children: [
          Container(
              color: const Color.fromARGB(255, 54, 54, 54),
              width: MediaQuery.of(context).size.width < 769 ? 380.0 : 650.0,
              height: 30.0,
              child: Row(
                children: <Widget>[
                  const SizedBox(width: 10.0),
                  Image.network(
                    'https://img.icons8.com/ios-glyphs/90/000000/macos-close.png',
                    color: const Color(0xffff605c),
                    scale: 5,
                  ),
                  const SizedBox(width: 5.0),
                  Image.network(
                    'https://img.icons8.com/ios-glyphs/90/000000/macos-minimize.png',
                    color: const Color(0xffffbd44),
                    scale: 5,
                  ),
                  const SizedBox(width: 5.0),
                  Image.network(
                    'https://img.icons8.com/ios-glyphs/90/000000/macos-full-screen.png',
                    color: const Color(0xff00ca4e),
                    scale: 5,
                  ),
                  const SizedBox(width: 100.0),
                  Text(
                    "DRAG ME",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              )),
          Container(
            color: const Color.fromARGB(255, 37, 37, 37),
            width: MediaQuery.of(context).size.width < 769 ? 380.0 : 650.0,
            height: 350.0,
            child: _showText
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 5.0),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 5.0),
                        child: SelectableText('ls Education/',
                            style: Theme.of(context).textTheme.bodySmall),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 5.0),
                        child: SelectableText(
                            'Erciyes University BSc Computer Engineering 2021',
                            style: Theme.of(context).textTheme.bodySmall),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 5.0),
                        child: SelectableText('ls Tools/',
                            style: Theme.of(context).textTheme.bodySmall),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 5.0),
                        child: SelectableText(
                            'Flutter, React/React-Native, Firebase',
                            style: Theme.of(context).textTheme.bodySmall),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 5.0),
                        child: SelectableText('ls Languages/',
                            style: Theme.of(context).textTheme.bodySmall),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 5.0),
                        child: SelectableText('Turkish, English',
                            style: Theme.of(context).textTheme.bodySmall),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 5.0),
                        child: SelectableText('ls Contact/',
                            style: Theme.of(context).textTheme.bodySmall),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, top: 5.0),
                        child: SelectableText('menesilhan@gmail.com',
                            style: Theme.of(context).textTheme.bodySmall),
                      ),
                    ],
                  )
                : (_show
                    ? Lottie.network(
                        'https://assets8.lottiefiles.com/packages/lf20_urgxqz4c.json',
                        repeat: false,
                      )
                    : const SizedBox()),
          ),
        ],
      ),
    );
  }
}
