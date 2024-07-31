import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pixel6_machine_test/controller/filter_controller.dart';
import 'package:pixel6_machine_test/controller/use_controller.dart';
import 'package:pixel6_machine_test/view/widgets/data_table_widget.dart';
import 'package:pixel6_machine_test/view/widgets/filter_widget.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Watch the user data provider
    final initialUserData = ref.watch(userDataProvider);

    return initialUserData.when(
      data: (data) {
        // Watch the filtered user data provider
        final filteredUserData =
            ref.watch(FilterControllerProvider(data: data.users!));

        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Employees",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            actions: [
              // Add filter widget to the AppBar
              FilterWidget(
                data: data,
                width: 100,
                height: 40,
              ),
            ],
          ),
          body: SingleChildScrollView(
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
                    // Display the filtered user data
                    DataTableWidget(data: filteredUserData),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      // Display error message if data fetching fails
      error: (error, stackTrace) => Center(
        child: Text(error.toString()),
      ),
      // Show a loading indicator while fetching data
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
