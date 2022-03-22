part of view;

class PageBlock extends StatelessWidget {
  const PageBlock({
    required this.blockStyle,
    required this.content,
    Key? key,
  }) : super(key: key);

  final TextStyle blockStyle;
  final String content;

  @override
  Widget build(BuildContext context) {
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
