part of view;

class ParagraphField extends StatelessWidget {
  const ParagraphField({Key? key, required this.text, required this.controller})
      : super(key: key);

  final String text;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
    );
  }
}
