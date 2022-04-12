part of view;

class PageBlock extends StatelessWidget {
  PageBlock({
    required this.blockStyle,
    required this.content,
    this.isSubHeader = false,
    Key? key,
  }) : super(key: key);

  final TextStyle blockStyle;
  final String content;
  bool? isSubHeader;

  @override
  Widget build(BuildContext context) {
    if (blockStyle == CustomTheme.defaultTheme.textTheme.displayMedium) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            style: blockStyle,
            decoration: const InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 2.0),
                isCollapsed: true),
            maxLines: null,
            controller: TextEditingController(text: content),
            autofocus: true,
          ),
          Container(color: Palette.horizontalRules, width: 230.0, height: 1.5),
        ],
      );
    } else {
      return TextField(
        style: blockStyle,
        decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 5.0),
            isCollapsed: true),
        maxLines: null,
        controller: TextEditingController(text: content),
        autofocus: true,
      );
    }
  }
}
