part of view;

class PageEditor extends StatefulWidget {
  const PageEditor({Key? key}) : super(key: key);

  @override
  State<PageEditor> createState() => _PageEditorState();
}

class _PageEditorState extends State<PageEditor> {
  var data = Data();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Editor'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Page(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: const Text('Rich Text'),
              ),
              OutlinedButton(
                onPressed: () {
                  data.dataInOrder.add(PageBlock(
                      blockStyle: Theme.of(context).textTheme.displayLarge!,
                      content: 'Adding a New Heading'));
                  setState(() {});
                },
                child: const Text('Add Heading'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Add a Paragraph'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Add Table'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Add Image'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Create Mask Path'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text('Edit Image'),
              ),
            ],
          )
        ],
      ),
    );
  }
}
