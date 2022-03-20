part of view;

class Page extends StatelessWidget {
  const Page(this.titles, this.paragraphs, {Key? key}) : super(key: key);

  final List<String> titles;
  final List<String> paragraphs;

  @override
  Widget build(BuildContext context) {
    List<TextEditingController> _controllers = [];
    List<TextField> _fields = [];
    return ListView.builder(
      shrinkWrap: true,
      itemCount: _fields.length,
      itemBuilder: ((context, index) {
        return Container(
          margin: const EdgeInsets.all(5.0),
          child: TextField(
            controller: TextEditingController(text: paragraphs[index]),
          ),
        );
      }),
    );
  }
}
