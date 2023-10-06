import 'package:flutter/material.dart';
import 'package:mustachehub/core/helpers/debouncer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final GlobalKey _textFieldKey = GlobalKey();
  final TextStyle _textFieldStyle = const TextStyle(fontSize: 20);
  final TextEditingController _textFieldController = TextEditingController();
  late TextField _textField;
  final focusnode = FocusNode();
  final Debouncer deb = Debouncer();
  double xCaret = 0.0;
  double yCaret = 0.0;
  double painterWidth = 0.0;
  double painterHeight = 0.0;
  double preferredLineHeight = 0.0;

  @override
  void initState() {
    super.initState();

    /// Listen changes on your text field controller
    _textFieldController.addListener(() {
      deb.resetDebounce(() {
        _updateCaretOffset(_textFieldController.text);
      });
    });
  }

  Future<void> _updateCaretOffset(String text) async {
    TextPainter painter = TextPainter(
      textDirection: TextDirection.ltr,
      text: TextSpan(
        style: _textFieldStyle,
        text: text,
      ),
    );
    painter.layout();

    TextPosition cursorTextPosition = _textFieldController.selection.base;
    Rect caretPrototype = Rect.fromLTWH(
        0.0, 0.0, _textField.cursorWidth, _textField.cursorHeight ?? 0);
    Offset caretOffset =
        painter.getOffsetForCaret(cursorTextPosition, caretPrototype);
    setState(() {
      xCaret = caretOffset.dx;
      yCaret = caretOffset.dy;
      painterWidth = painter.width;
      painterHeight = painter.height;
      preferredLineHeight = painter.preferredLineHeight;
    });

    // OverlayState overlayState = Overlay.of(context);
    // OverlayEntry suggestionTagoverlayEntry = OverlayEntry(
    //   builder: (context) {
    //     return Positioned(
    //       // Decides where to place the tag on the screen.
    //       // top: focusnode.offset.dy + painter.height + 3,
    //       // left: focusnode.offset.dx + painter.width + 10,
    //       top: focusnode.offset.dy + painter.height,
    //       // top: focusnode.offset.dy,
    //       // left: caretOffset.dx,
    //       left: focusnode.offset.dx,

    //       // Tag code.
    //       child: const Material(
    //         elevation: 4.0,
    //         color: Colors.lightBlueAccent,
    //         child: Text(
    //           'Show tag here',
    //           style: TextStyle(
    //             fontSize: 20.0,
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // );

    // overlayState.insert(suggestionTagoverlayEntry);

    // await Future.delayed(const Duration(milliseconds: 3500));
    // suggestionTagoverlayEntry.remove();
  }

  @override
  Widget build(BuildContext context) {
    String text = '''
xCaret: $xCaret
yCaret: $yCaret
yCaretBottom: ${yCaret + preferredLineHeight}
''';

    _textField = TextField(
      focusNode: focusnode,
      controller: _textFieldController,
      keyboardType: TextInputType.multiline,
      key: _textFieldKey,
      style: _textFieldStyle,
      // minLines: 1,
      // maxLines: 2,
      minLines: 1,
      maxLines: 5,
      // expands: true,
      // maxLines: null,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 40),
        Text(text),
        Padding(
          padding: const EdgeInsets.all(30),
          child: Autocomplete<String>(
            optionsBuilder: (textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              }

              return <String>['banana', 'igor', 'pera', 'maça', 'sexo']
                  .where((String item) {
                return item.contains(textEditingValue.text.toLowerCase());
              });
            },
            fieldViewBuilder:
                (context, textEditingController, focusNode, onFieldSubmitted) {
              return TextFormField(
                focusNode: focusNode,
                controller: textEditingController,
                keyboardType: TextInputType.multiline,
                key: _textFieldKey,
                style: _textFieldStyle,
                onFieldSubmitted: (d) {
                  onFieldSubmitted();
                },
              );
            },
          ),
        ),
        // Expanded(
        //   child: Padding(
        //     padding: const EdgeInsets.all(30),
        //     child: _textField,
        //   ),
        // ),
        // Padding(
        //   padding: const EdgeInsets.all(30),
        //   child: _textField,
        // ),
      ],
    );
  }
}
