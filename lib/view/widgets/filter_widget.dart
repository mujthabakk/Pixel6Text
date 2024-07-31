import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pixel6_machine_test/controller/filter_controller.dart';
import 'package:pixel6_machine_test/controller/satae_provider.dart';
import 'package:pixel6_machine_test/model/user_model/user_model.dart';
import 'package:pixel6_machine_test/view/widgets/drop_down_button.dart';

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
    final genderValue = ref.watch(genderProvider); // Watch the current gender filter value
    final countryValue = ref.watch(countryProvider); // Watch the current country filter value

    // Create lists for gender and country options including "Select All"
    final genders = ["Select All", ...data.users!.map((user) => user.gender!).toSet().toList()];
    final countries = ["Select All", ...data.users!.map((user) => user.address!.country!).toSet().toList()];

    return Row(
      children: [
        DropdownButtonWidget(
          text: 'Gender',
          width: width,
          height: height,
          value: genderValue,
          items: genders,
          onChanged: (String? newValue) {
            // Update the gender filter value based on the selected option
            if (newValue == "Select All") {
              ref.read(genderProvider.notifier).state = null; // Reset gender filter
            } else {
              ref.read(genderProvider.notifier).state = newValue;
            }
            // Apply the filter based on the new gender value and current country value
            ref
                .read(FilterControllerProvider(data: data.users!).notifier)
                .filterData(
                  newValue == "Select All" ? null : newValue,
                  ref.read(countryProvider),
                );
          },
        ),
        const SizedBox(width: 8),
        DropdownButtonWidget(
          text: 'Country',
          width: width,
          height: height,
          value: countryValue,
          items: countries,
          onChanged: (String? newValue) {
            // Update the country filter value based on the selected option
            if (newValue == "Select All") {
              ref.read(countryProvider.notifier).state = null; // Reset country filter
            } else {
              ref.read(countryProvider.notifier).state = newValue;
            }
            // Apply the filter based on the current gender value and new country value
            ref
                .read(FilterControllerProvider(data: data.users!).notifier)
                .filterData(
                  ref.read(genderProvider),
                  newValue == "Select All" ? null : newValue,
                );
          },
        ),
      ],
    );
  }
}
