part of view;

class Page extends StatelessWidget {
  Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      maxScale: 5.0,
      minScale: 0.5,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: AspectRatio(
          aspectRatio: 1 / 1.4142,
          child: Container(
            color: Palette.pageColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Row(
                children: [
                  const SizedBox(width: 30.0),
                  Expanded(
                    child: ListView(
                      children: [
                        Consumer<Data>(
                          builder: (context, value, child) {
                            return ListView.builder(
                              shrinkWrap: true,
                              itemCount: Data().dataInOrder.length,
                              itemBuilder: ((context, index) {
                                return Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Data().dataInOrder[index],
                                );
                              }),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Expanded(
                    child: ListView(
                      children: [
                        const SizedBox(height: 100.0), //Temporary
                        Text(
                          'Mr. Eaves Small Caps: Section Header',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        Text(
                          'Mr. Eaves Small Caps: Sub Header',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        Text(
                          'Mr. Eaves Small Caps: Block Header',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Text(
                          'Zatanna Misdirection: Monster Manual Note',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        Text(
                          'Scaly Sans Bold: Table Header',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        Text('Scaly Sans Bold: Column Header',
                            style: Theme.of(context).textTheme.labelMedium),
                        Text('Scaly Sans: Table Body',
                            style: Theme.of(context).textTheme.labelSmall),
                      ],
                    ),
                  ),
                  const SizedBox(width: 30.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
