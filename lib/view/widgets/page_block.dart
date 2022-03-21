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
      decoration: const InputDecoration(border: InputBorder.none),
      maxLines: null,
      controller: TextEditingController(text: content),
    );
  }
}
