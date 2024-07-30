import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Employees",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          FilterWidget(
            text: 'Country',
            width: 100,
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: FilterWidget(
              text: 'Gender',
              width: 100,
              height: 40,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(4),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black12),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("id"),
                    Text(" image"),
                    Text("Full Name"),
                    Text("Demographiy"),
                    Text("Description"),
                    Text("Location"),
                  ],
                ),
              ),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.all(8),
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${index + 1}'),
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://dummyjson.com/icon/henryh/128'),
                        ),
                        Text('Employee ${index + 1}'),
                        Text("Data 1"),
                        Text("Data 1"),
                        Text("Data 1"),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                  itemCount: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterWidget extends ConsumerWidget {
  const FilterWidget({
    super.key,
    required this.text,
    required this.width,
    required this.height,
  });

  final String text;
  final double width;
  final double height;
  final List<String> item = const ['One', 'Two', 'Three', 'Four'];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dropdownValue = ref.watch(dropdownValueProvider);

    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 2, color: Colors.black12),
      ),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down_outlined),
        iconSize: 24,
        elevation: 16,
        underline: const SizedBox(),
        onChanged: (String? newValue) {
          if (newValue != null) {
            ref.read(dropdownValueProvider.notifier).state = newValue;
          }
        },
        items: item.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        dropdownColor: Colors.white,
        style: const TextStyle(color: Colors.black),
        isExpanded: true,
      ),
    );
  }
}

// Define a provider for the dropdown value
final dropdownValueProvider = StateProvider<String>((ref) {
  return 'One';
});
