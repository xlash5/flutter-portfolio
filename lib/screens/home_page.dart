import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/my_icon_button.dart';
import '../widgets/console_window.dart';
import 'package:url_launcher/url_launcher.dart';

// final Shader linearGradient = const LinearGradient(
//   colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
// ).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDark = false;
  bool _show = false;
  bool _showText = false;
  bool _expanded = false;
  bool _minimized = false;
  bool _closed = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _show = true;
      });
    });
    Future.delayed(const Duration(seconds: 5, milliseconds: 800), () {
      setState(() {
        _showText = true;
      });
    });
  }

  void Function()? _onExpand() {
    setState(() {
      _closed = false;
      _minimized = false;
      _expanded = !_expanded;
    });
  }

  void Function()? _onMinimize() {
    setState(() {
      _closed = false;
      _expanded = false;
      _minimized = !_minimized;
    });
  }

  void Function()? _onClose() {
    setState(() {
      _minimized = false;
      _expanded = false;
      _closed = !_closed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: ListView(
        children: [
          Container(
            height: 100.0,
            color: Theme.of(context).primaryColor,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: MediaQuery.of(context).size.width < 769
                  ? const EdgeInsets.only(right: 30.0)
                  : const EdgeInsets.only(right: 70.0),
              child: Row(
                textDirection: TextDirection.rtl,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  FlutterSwitch(
                    width: 100.0,
                    height: 55.0,
                    toggleSize: 45.0,
                    value: isDark,
                    borderRadius: 30.0,
                    padding: 2.0,
                    activeToggleColor: const Color.fromARGB(255, 0, 55, 97),
                    inactiveToggleColor: const Color.fromARGB(255, 0, 55, 97),
                    activeSwitchBorder: Border.all(
                      color: Colors.black,
                      width: 6.0,
                    ),
                    inactiveSwitchBorder: Border.all(
                      color: Colors.black,
                      width: 6.0,
                    ),
                    activeColor: const Color.fromARGB(255, 39, 39, 39),
                    inactiveColor: const Color.fromARGB(255, 39, 39, 39),
                    activeIcon: const FaIcon(
                      FontAwesomeIcons.solidSun,
                      color: Colors.yellow,
                    ),
                    inactiveIcon: const FaIcon(
                      FontAwesomeIcons.solidMoon,
                      color: Colors.pink,
                    ),
                    onToggle: (val) {
                      setState(() {
                        isDark = val;
                        MyApp.themeNotifier.value =
                            MyApp.themeNotifier.value == ThemeMode.light
                                ? ThemeMode.dark
                                : ThemeMode.light;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: MediaQuery.of(context).size.width < 769
                ? const EdgeInsets.only(left: 20.0, top: 0.0)
                : const EdgeInsets.only(left: 120.0, top: 0.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SelectableText(
                    "Hey there,",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 5.0),
                  SelectableText(
                    "I'm Muhammet Enes İlhan",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 5.0),
                  SelectableText(
                    "Software Engineer",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  Row(
                    children: <Widget>[
                      MyIconButton(
                        iconData: FontAwesomeIcons.github,
                        onPress: () async {
                          if (!await launch("https://github.com/xlash5")) {
                            throw 'Could not launch https://github.com/xlash5';
                          }
                        },
                      ),
                      const SizedBox(width: 15.0),
                      MyIconButton(
                        iconData: FontAwesomeIcons.linkedin,
                        onPress: () async {
                          if (!await launch(
                              "https://www.linkedin.com/in/menesilhan/")) {
                            throw 'Could not launch https://www.linkedin.com/in/menesilhan/';
                          }
                        },
                      ),
                      const SizedBox(width: 15.0),
                      MyIconButton(
                        iconData: FontAwesomeIcons.instagram,
                        onPress: () async {
                          if (!await launch(
                              "https://www.instagram.com/xlash5/")) {
                            throw 'Could not https://www.instagram.com/xlash5/';
                          }
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Draggable<int>(
                      // Data is the value this Draggable stores.
                      data: 10,
                      feedback: ConsoleWindow(
                        onClose: _onClose,
                        closed: _closed,
                        minimized: _minimized,
                        onMinimize: _onMinimize,
                        showText: _showText,
                        show: _show,
                        expanded: _expanded,
                        onExpand: _onExpand,
                      ),
                      childWhenDragging: SizedBox(),
                      child: ConsoleWindow(
                        onClose: _onClose,
                        closed: _closed,
                        minimized: _minimized,
                        onMinimize: _onMinimize,
                        expanded: _expanded,
                        showText: _showText,
                        show: _show,
                        onExpand: _onExpand,
                      ),
                    ),
                  ),
                  const SizedBox(height: 200.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
