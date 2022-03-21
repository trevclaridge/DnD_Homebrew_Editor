part of view;

class Page extends StatelessWidget {
  Page({Key? key}) : super(key: key);

  var data = Data();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          // ListView.builder(
          //   shrinkWrap: true,
          //   itemCount: data.paragraphs.length,
          //   itemBuilder: ((context, index) {
          //     return Container(
          //       margin: const EdgeInsets.all(5.0),
          //       child: TextField(
          //         style: const TextStyle(
          //             fontFamily: 'Bookinsanity', fontSize: 9.0),
          //         maxLines: null,
          //         decoration: const InputDecoration(border: InputBorder.none),
          //         controller:
          //             TextEditingController(text: data.paragraphs[index]),
          //       ),
          //     );
          //   }),
          // ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: data.dataInOrder.length,
            itemBuilder: ((context, index) {
              return Container(
                  margin: EdgeInsets.all(5.0), child: data.dataInOrder[index]);
            }),
          ),

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
          // OutlinedButton(
          //   onPressed: () {},
          //   child: const Text('Add a Title'),
          // ),
        ],
      ),
    );
  }
}
