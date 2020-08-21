import 'package:flutter/material.dart';
import 'package:jsonparsing/provider/myHomePageProvider.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('New Indent Drug Details'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          )
        ],
      ),
      body: ChangeNotifierProvider<MyHomePageProvider>(
        create: (context) => MyHomePageProvider(),
        child: Consumer<MyHomePageProvider>(
          builder: (context, provider, child) {
            if (provider.data == null) {
              provider.getData(context);
              return Center(child: CircularProgressIndicator());
            }
            // when we have the json loaded... let's put the data into a data table widget
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              // Data table widget in not scrollable so we have to wrap it in a scroll view when we have a large data set..
              child: SingleChildScrollView(
                child: DataTable(
                  columns: [
                    DataColumn(
                        label: Text('DRUG ID'),
                        tooltip: 'represents id of the drug.'),
                    DataColumn(
                        label: Text('DRUG NAME'),
                        tooltip: 'represents name of the drug.'),
                    DataColumn(
                        label: Text('PROGRAMME Id'),
                        tooltip: 'represents id of programme'),
                    DataColumn(
                        label: Text('PROGRAMME NAME'),
                        tooltip: 'represents name of programme'),
                    DataColumn(
                        label: Text('PACKING DESCRIPTION'),
                        tooltip: 'represents description of packaging'),
                    DataColumn(
                        label: Text('AVAILABLE QNTY'),
                        tooltip: 'represents qnty of drugs available'),
                  ],
                  rows: provider.data.drugList
                      .map((data) =>
                          // we return a DataRow every time
                          DataRow(
                              // List<DataCell> cells is required in every row
                              cells: [
                                // DataCell((data.verified)
                                //     ? Icon(
                                //         Icons.verified_user,
                                //         color: Colors.green,
                                //       )
                                //     : Icon(Icons.cancel, color: Colors.red)),
                                // I want to display a green color icon when user is verified and red when unverified
                                DataCell(Text(data.drugId)),
                                DataCell(Text(data.drugName)),
                                DataCell(Text(data.programmeId)),
                                DataCell(Text(data.programmeName)),
                                DataCell(Text(data.packingDescription)),
                                DataCell(Text(data.availableQty)),
                              ]))
                      .toList(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
