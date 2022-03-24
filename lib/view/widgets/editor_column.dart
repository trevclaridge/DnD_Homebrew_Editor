part of view;

// ignore: must_be_immutable
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
            onPressed: () => Provider.of<Data>(context, listen: false)
                .addBlock(CustomTheme.defaultTheme.textTheme.displayLarge!),
            child: const Text('Add Section Header'),
          ),
          OutlinedButton(
            onPressed: () => Provider.of<Data>(context, listen: false)
                .addBlock(CustomTheme.defaultTheme.textTheme.displayMedium!),
            child: const Text('Add Sub Header'),
          ),
          OutlinedButton(
            onPressed: () => Provider.of<Data>(context, listen: false)
                .addBlock(CustomTheme.defaultTheme.textTheme.displaySmall!),
            child: const Text('Add Block Header'),
          ),
          OutlinedButton(
            onPressed: () => Provider.of<Data>(context, listen: false)
                .addBlock(CustomTheme.defaultTheme.textTheme.bodySmall!),
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
          OutlinedButton(
              onPressed: () => Navigator.pushNamed(context, 'quill'),
              child: const Text('Go To Quill Editor'))
        ],
      ),
    );
  }
}
