
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class HomePage extends ConsumerWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Employees",
//           style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//         ),
//         actions: [
//           FilterWidget(
//             text: 'Country',
//             onTap: () {
//               showDialog(
//                 context: context,
//                 builder: (BuildContext context) {
//                   return const AlertDialog(
//                     title: Text('Select Country'),
//                     content: DropdownExample(),
//                   );
//                 },
//               );
//             },
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8),
//             child: FilterWidget(
//               text: 'Gender',
//               onTap: () {
//                 showDialog(
//                   context: context,
//                   builder: (BuildContext context) {
//                     return const AlertDialog(
//                       title: Text('Select Gender'),
//                       content: DropdownExample(),
//                     );
//                   },
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//       body:ListView.separated(itemBuilder: itemBuilder, separatorBuilder: separatorBuilder, itemCount: itemCount)
//     );
//   }
// }

// class FilterWidget extends StatelessWidget {
//   const FilterWidget({
//     super.key,
//     required this.text,
//     required this.onTap,
//   });

//   final String text;
//   final void Function()? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: onTap,
//       child: Container(
//         width: 90,
//         height: 35,
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(8),
//             border: Border.all(width: 2, color: Colors.black12)),
//         child: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(text),
//               const Icon(Icons.arrow_drop_down_outlined),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class DropdownExample extends ConsumerWidget {
//   const DropdownExample({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final dropdownValue = ref.watch(dropdownValueProvider);

//     return DropdownButton<String>(
//       value: dropdownValue,
//       icon: const Icon(Icons.arrow_drop_down_outlined),
//       iconSize: 24,
//       elevation: 16,
//       underline: Container(
//         height: 2,
//         color: Colors.deepPurpleAccent,
//       ),
//       onChanged: (String? newValue) {
//         if (newValue != null) {
//           ref.read(dropdownValueProvider.notifier).state = newValue;
//         }
//       },
//       items: <String>['One', 'Two', 'Three', 'Four']
//           .map<DropdownMenuItem<String>>((String value) {
//         return DropdownMenuItem<String>(
//           value: value,
//           child: Text(value),
//         );
//       }).toList(),
//     );
//   }
// }

// // Define a provider for the dropdown value
// final dropdownValueProvider = StateProvider<String>((ref) {
//   return 'One';
// });
