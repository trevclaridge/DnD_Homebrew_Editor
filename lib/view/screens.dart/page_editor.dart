part of view;

class PageEditor extends StatefulWidget {
  const PageEditor({Key? key}) : super(key: key);

  @override
  State<PageEditor> createState() => _PageEditorState();
}

class _PageEditorState extends State<PageEditor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Editor'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Page(),
          const VerticalDivider(thickness: 2.0),
          EditorColumn(),
        ],
      ),
    );
  }
}
