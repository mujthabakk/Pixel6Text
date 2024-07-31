import 'package:flutter/material.dart';
import 'package:pixel6_machine_test/model/user_model/user.dart';

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({
    required this.data,
    super.key,
  });

  final List<User> data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, // Allows horizontal scrolling
      child: DataTable(
        columns: const [
          // Define the columns for the DataTable
          DataColumn(label: Text('ID')),
          DataColumn(label: Text('Image')),
          DataColumn(label: Text('Full Name')),
          DataColumn(label: Text('Demography')),
          DataColumn(
            label: Text('Description'),
          ),
          DataColumn(label: Text('Location')),
        ],
        // Generate DataRow for each user in the data list
        rows: data.map((user) {
          return DataRow(
            cells: [
              // Display user ID (index + 1 for 1-based index)
              DataCell(Center(child: Text('${data.indexOf(user) + 1}'))),
              // Display user image in a CircleAvatar
              DataCell(Center(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      user.image ?? "https://dummyjson.com/icon/henryh/128"),
                ),
              )),
              // Display user's full name
              DataCell(Center(child: Text('${user.firstName!} ${user.lastName!}'))),
              // Display user's demography information
              DataCell(Center(child: Text(user.bank!.cardExpire!))),
              // Display user's department
              DataCell(Center(child: Text(user.company!.department!))),
              // Display user's city
              DataCell(Center(child: Text(user.address!.city!))),
            ],
          );
        }).toList(), // Convert the mapped DataRow to a list
      ),
    );
  }
}
