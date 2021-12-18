import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ConsoleWindow extends StatelessWidget {
  const ConsoleWindow({
    Key? key,
    required bool showText,
    required bool show,
    required bool expanded,
    Function()? onExpand,
    required bool minimized,
    Function()? onMinimize,
    required bool closed,
    Function()? onClose,
  })  : _showText = showText,
        _show = show,
        _expanded = expanded,
        _onExpand = onExpand,
        _minimized = minimized,
        _onMinimize = onMinimize,
        _closed = closed,
        _onClose = onClose,
        super(key: key);

  final bool _showText;
  final bool _show;
  final bool _expanded;
  final Function()? _onExpand;
  final bool _minimized;
  final Function()? _onMinimize;
  final bool _closed;
  final Function()? _onClose;

  double _getWidth(context) {
    if (_expanded) {
      return MediaQuery.of(context).size.width;
    } else if (_minimized) {
      return (MediaQuery.of(context).size.width < 769 ? 380.0 : 650.0) / 2;
    } else if (_closed) {
      return 0;
    }

    return MediaQuery.of(context).size.width < 769 ? 380.0 : 650.0;
  }

  double _getHeight(context) {
    if (_expanded) {
      return MediaQuery.of(context).size.height - 30;
    } else if (_minimized) {
      return 0;
    } else if (_closed) {
      return 0;
    }

    return 350.0;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Column(
        children: [
          AnimatedContainer(
              duration: const Duration(seconds: 1),
              color: const Color.fromARGB(255, 54, 54, 54),
              width: _getWidth(context),
              height: 30.0,
              child: Row(
                children: <Widget>[
                  const SizedBox(width: 10.0),
                  GestureDetector(
                    onTap: _onClose,
                    child: Image.network(
                      'https://img.icons8.com/ios-glyphs/90/000000/macos-close.png',
                      color: const Color(0xffff605c),
                      scale: 5,
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  GestureDetector(
                    onTap: _onMinimize,
                    child: Image.network(
                      'https://img.icons8.com/ios-glyphs/90/000000/macos-minimize.png',
                      color: const Color(0xffffbd44),
                      scale: 5,
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  GestureDetector(
                    onTap: _onExpand,
                    child: Image.network(
                      'https://img.icons8.com/ios-glyphs/90/000000/macos-full-screen.png',
                      color: const Color(0xff00ca4e),
                      scale: 5,
                    ),
                  ),
                  SizedBox(width: _minimized ? 10.0 : 100.0),
                  Text(
                    "DRAG ME",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              )),
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            color: const Color.fromARGB(255, 37, 37, 37),
            width: _getWidth(context),
            height: _getHeight(context),
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
