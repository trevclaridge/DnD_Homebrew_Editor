part of view;

class EditorColumn extends StatelessWidget with ChangeNotifier {
  EditorColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            height: 150.0,
            child: Center(
              child: OutlinedButton(
                onPressed: () {},
                child: const Text('Rich Text'),
              ),
            ),
          ),
          const Divider(thickness: 2.0),
          OutlinedButton(
            onPressed: () =>
                Provider.of<Data>(context, listen: false).addBlock(),
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
      ),
    );
  }
}
