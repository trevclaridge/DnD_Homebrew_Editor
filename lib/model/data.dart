part of model;

class Data with ChangeNotifier {
  //Singleton pattern
  static final Data _data = Data._internal();
  factory Data() {
    return _data;
  }
  Data._internal();

  List<String> get titles => _titles;
  List<String> get paragraphs => _paragraphs;

  //test lists - starting data
  final List<String> _titles = <String>[
    'Introduction',
    'Synopsis',
    'Running the Game'
  ];
  final List<String> _paragraphs = <String>[
    'Just a couple of Lines: Much of the power of a kingdom resides in the strength of its interior. Using Minor Actions for construction allows a kingdom to develop new resources in effort to achieve their goals.',
    'Short paragraph: Two or more players are not allowed to message or communicate in any type of private chat unless both of their kingdoms have spent a Minor Action to send a delegate to the other kingdom. Private chats including more than one kingdom cost Minor Actions equal to the number of players in the chat. Communication channels close at the end of each turn unless the Minor Actions are spent to renew them.',
    'Longer Paragraph:  The internal stability and general happiness of a kingdom\'s citizens. Unlike the other Kingdom Resources, a kingdom often won\'t directly affect the points of their Law resource. Instead, Law is reactive to how the citizens perceive critical events around the kingdoms. If an event is likely to cause distress to the average civilian, the Law resource would be depleted; likewise, periods of peace and prosperity are likely to encourage social cohesion, increasing the Law resource. The number of the Law resource directly affects the number of Minor Actions a kingdom has access to per turn. Kingdoms can look to the Law Modifier chart to see how their Law resource number affects their number of Minor Actions every turn.'
  ];

  final List<Widget> dataInOrder = <Widget>[
    PageBlock(
        blockStyle: CustomTheme.defaultTheme.textTheme.displayLarge!,
        content: 'Introduction'),
    PageBlock(
      blockStyle: CustomTheme.defaultTheme.textTheme.bodySmall!,
      content:
          'Just a couple of Lines: Much of the power of a kingdom resides in the strength of its interior. Using Minor Actions for construction allows a kingdom to develop new resources in effort to achieve their goals.',
    ),
    PageBlock(
        blockStyle: CustomTheme.defaultTheme.textTheme.displayMedium!,
        content: 'Synopsis'),
    PageBlock(
      blockStyle: CustomTheme.defaultTheme.textTheme.bodySmall!,
      content:
          'Short paragraph: Two or more players are not allowed to message or communicate in any type of private chat unless both of their kingdoms have spent a Minor Action to send a delegate to the other kingdom. Private chats including more than one kingdom cost Minor Actions equal to the number of players in the chat. Communication channels close at the end of each turn unless the Minor Actions are spent to renew them.',
    ),
    PageBlock(
        blockStyle: CustomTheme.defaultTheme.textTheme.displaySmall!,
        content: 'Running the Game'),
    PageBlock(
        blockStyle: CustomTheme.defaultTheme.textTheme.bodySmall!,
        content:
            'Longer Paragraph:  The internal stability and general happiness of a kingdom\'s citizens. Unlike the other Kingdom Resources, a kingdom often won\'t directly affect the points of their Law resource. Instead, Law is reactive to how the citizens perceive critical events around the kingdoms. If an event is likely to cause distress to the average civilian, the Law resource would be depleted; likewise, periods of peace and prosperity are likely to encourage social cohesion, increasing the Law resource. The number of the Law resource directly affects the number of Minor Actions a kingdom has access to per turn. Kingdoms can look to the Law Modifier chart to see how their Law resource number affects their number of Minor Actions every turn.'),
  ];

  void addBlock(TextStyle blockStyle) {
    dataInOrder.add(PageBlock(blockStyle: blockStyle, content: ''));
    notifyListeners();
  }
}
