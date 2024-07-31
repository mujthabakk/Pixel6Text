import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pixel6_machine_test/controller/user_controller.dart';
import 'package:pixel6_machine_test/model/user_model/user_model.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialUserData = ref.watch(initialUserDataProvider);
    final filteredUserData = ref.watch(userDataProvider);

    return filteredUserData.when(
      error: (error, stackTrace) => Center(
        child: Text(error.toString()),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      data: (data) => Scaffold(
        appBar: AppBar(
          title: const Text(
            "Employees",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          actions: [
            FilterWidget(
              data: data,
              width: 100,
              height: 40,
            ),
          ],
        ),
        body: initialUserData.when(
          data: (initialData) {
            return filteredUserData.when(
              data: (filteredData) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black12),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                          ),
                          DataTableWidget(
                              data: filteredData.users!.isEmpty
                                  ? initialData
                                  : filteredData),
                        ],
                      ),
                    ),
                  ),
                );
              },
              error: (error, stackTrace) => Center(
                child: Text(error.toString()),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          error: (error, stackTrace) => Center(
            child: Text(error.toString()),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({
    required this.data,
    super.key,
  });

  final UserModel data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: const [
          DataColumn(label: Text('ID')),
          DataColumn(label: Text('Image')),
          DataColumn(label: Text('Full Name')),
          DataColumn(label: Text('Demography')),
          DataColumn(
            label: Text('Description'),
          ),
          DataColumn(label: Text('Location')),
        ],
        rows: data.users!.map((user) {
          return DataRow(
            cells: [
              DataCell(Center(child: Text('${data.users!.indexOf(user) + 1}'))),
              DataCell(Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      user.image ?? "https://dummyjson.com/icon/henryh/128"),
                ),
              )),
              DataCell(
                  Center(child: Text('${user.firstName!} ${user.lastName!}'))),
              DataCell(Center(child: Text(user.bank!.cardExpire!))),
              DataCell(Center(child: Text(user.company!.department!))),
              DataCell(Center(child: Text(user.address!.city!))),
            ],
          );
        }).toList(),
      ),
    );
  }
}

class FilterWidget extends ConsumerWidget {
  const FilterWidget({
    super.key,
    required this.width,
    required this.height,
    required this.data,
  });

  final double width;
  final double height;
  final UserModel data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final genderValue = ref.watch(genderProvider);
    final countryValue = ref.watch(countryProvider);

    final genders = data.users!.map((user) => user.gender!).toSet().toList();
    final countries =
        data.users!.map((user) => user.address!.country!).toSet().toList();

    return Row(
      children: [
        DropdownButtonWidget(
          text: 'Gender',
          width: width,
          height: height,
          value: genderValue,
          items: genders,
          onChanged: (String? newValue) {
            if (newValue != null) {
              ref.read(genderProvider.notifier).state = newValue;
              ref.invalidate(userDataProvider);
            }
          },
        ),
        DropdownButtonWidget(
          text: 'Country',
          width: width,
          height: height,
          value: countryValue,
          items: countries,
          onChanged: (String? newValue) {
            if (newValue != null) {
              ref.read(countryProvider.notifier).state = newValue;
              ref.invalidate(userDataProvider);
            }
          },
        ),
      ],
    );
  }
}

class DropdownButtonWidget extends StatelessWidget {
  const DropdownButtonWidget({
    super.key,
    required this.width,
    required this.height,
    required this.value,
    required this.text,
    required this.items,
    required this.onChanged,
  });

  final double width;
  final double height;
  final String? value;
  final String text;
  final List<String> items;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
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
        hint: Text(value ?? text),
        value: value,
        icon: const Icon(Icons.arrow_drop_down_outlined),
        iconSize: 24,
        elevation: 16,
        underline: const SizedBox(),
        onChanged: onChanged,
        items: items.map<DropdownMenuItem<String>>((String value) {
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

// Define providers for the dropdown values
final genderProvider = StateProvider<String?>((ref) {
  return null;
});

final countryProvider = StateProvider<String?>((ref) {
  return null;
});
