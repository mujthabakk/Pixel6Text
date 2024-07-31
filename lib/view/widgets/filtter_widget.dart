import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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