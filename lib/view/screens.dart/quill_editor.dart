part of view;

class QuillEditorPage extends StatefulWidget {
  const QuillEditorPage({Key? key}) : super(key: key);

  @override
  State<QuillEditorPage> createState() => _QuillEditorPageState();
}

class _QuillEditorPageState extends State<QuillEditorPage> {
  quill.QuillController _controller = quill.QuillController.basic();
  FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quill Editor'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          InteractiveViewer(
            maxScale: 5.0,
            minScale: 0.5,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: AspectRatio(
                aspectRatio: 1 / 1.4142,
                child: Container(
                  color: Palette.pageColor,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Column(
                        children: [
                          quill.QuillToolbar.basic(controller: _controller),
                          Expanded(
                            child: quill.QuillEditor(
                              controller: _controller,
                              padding: EdgeInsets.zero,
                              scrollController: ScrollController(),
                              expands: false,
                              readOnly: false,
                              scrollable: true,
                              focusNode: _focusNode,
                              autoFocus: true,
                              customStyles: quill.DefaultStyles(
                                paragraph: quill.DefaultTextBlockStyle(
                                    CustomTheme
                                        .defaultTheme.textTheme.bodySmall!,
                                    const Tuple2(8.0, 0),
                                    const Tuple2(0.0, 0.0),
                                    null),
                                h1: quill.DefaultTextBlockStyle(
                                    CustomTheme
                                        .defaultTheme.textTheme.displayLarge!,
                                    const Tuple2(8.0, 0),
                                    const Tuple2(0.0, 0.0),
                                    null),
                                h2: quill.DefaultTextBlockStyle(
                                    CustomTheme
                                        .defaultTheme.textTheme.displayMedium!
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor:
                                                Palette.horizontalRules,
                                            decorationThickness: 4.0),
                                    const Tuple2(8.0, 0),
                                    const Tuple2(0.0, 0.0),
                                    null),
                                h3: quill.DefaultTextBlockStyle(
                                    CustomTheme
                                        .defaultTheme.textTheme.displaySmall!,
                                    const Tuple2(8.0, 0),
                                    const Tuple2(0.0, 0.0),
                                    null),
                              ),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ),
          ),
          const VerticalDivider(thickness: 2.0),
          EditorColumn(),
        ],
      ),
    );
  }
}
