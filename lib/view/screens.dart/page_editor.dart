part of view;

class PageEditor extends StatefulWidget {
  const PageEditor({Key? key}) : super(key: key);

  @override
  State<PageEditor> createState() => _PageEditorState();
}

class _PageEditorState extends State<PageEditor> {
  //test lists
  List<String> titles = <String>[
    'Introduction',
    'Synopsis',
    'Running the Game'
  ];
  List<String> paragraphs = <String>[
    'Just a couple of Lines: Much of the power of a kingdom resides in the strength of its interior. Using Minor Actions for construction allows a kingdom to develop new resources in effort to achieve their goals.',
    'Short paragraph: Two or more players are not allowed to message or communicate in any type of private chat unless both of their kingdoms have spent a Minor Action to send a delegate to the other kingdom. Private chats including more than one kingdom cost Minor Actions equal to the number of players in the chat. Communication channels close at the end of each turn unless the Minor Actions are spent to renew them.',
    'Longer Paraph:  The internal stability and general happiness of a kingdom\'s citizens. Unlike the other Kingdom Resources, a kingdom often won\'t directly affect the points of their Law resource. Instead, Law is reactive to how the citizens perceive critical events around the kingdoms. If an event is likely to cause distress to the average civilian, the Law resource would be depleted; likewise, periods of peace and prosperity are likely to encourage social cohesion, increasing the Law resource. The number of the Law resource directly affects the number of Minor Actions a kingdom has access to per turn. Kingdoms can look to the Law Modifier chart to see how their Law resource number affects their number of Minor Actions every turn.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page Editor'),
      ),
      body: Center(
        child: ListView(
          children: [
            // Page(titles, paragraphs),
            ListView.builder(
              shrinkWrap: true,
              itemCount: paragraphs.length,
              itemBuilder: ((context, index) {
                return Container(
                  margin: const EdgeInsets.all(5.0),
                  child: TextField(
                    maxLines: null,
                    decoration: const InputDecoration(border: InputBorder.none),
                    controller: TextEditingController(text: paragraphs[index]),
                  ),
                );
              }),
            ),
            OutlinedButton(
              onPressed: () {
                _addParagraph();
              },
              child: const Text('Add a Paragraph'),
            ),
            // OutlinedButton(
            //   onPressed: () {},
            //   child: const Text('Add a Title'),
            // ),
          ],
        ),
      ),
    );
  }

  _addParagraph() {
    paragraphs.add('');
    setState(() {});
  }
}
