import 'package:flutter/material.dart';
import 'package:jsonparsing/provider/myHomePageProvider.dart';
import 'package:provider/provider.dart';
import 'package:jsonparsing/pages/dropdown_formfield.dart';
import 'package:jsonparsing/pages/maindrawer.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  String programList;
  String drugList;
  String programListResult;
  final formKey = new GlobalKey<FormState>();

  void initState() {
    initState();
    programList = '';
    programListResult = '';
    drugList = '';
  }

  // ignore: unused_element
  _saveForm() {
    var form = formKey.currentState;
    if (form.validate()) {
      form.save();
      setState(() {
        programListResult = programList;
      });
    }
  }

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
      drawer: MainDrawer(),
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(16),
                child: DropDownFormField(
                  titleText: "Your Store",
                  hintText: "Please choose one",
                  value: programList,
                  onSaved: (value) {
                    setState(() {
                      programList = value;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      programList = value;
                    });
                  },
                  dataSource: [
                    {
                      "display": "Aizawl East DS",
                      "value": "Aizawl East DS",
                    }
                  ],
                  textField: "display",
                  valueField: "value",
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: DropDownFormField(
                  titleText: "Parent Store",
                  hintText: "Please choose one",
                  value: programList,
                  onSaved: (value) {
                    setState(() {
                      programList = value;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      programList = value;
                    });
                  },
                  dataSource: [
                    {
                      "display": "SWH HQ MIZORAM",
                      "value": "SWH HQ MIZORAM",
                    },
                  ],
                  textField: "display",
                  valueField: "value",
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: DropDownFormField(
                  titleText: 'Office Indent/Letter No',
                  hintText: 'Please choose one',
                  value: programList,
                  onSaved: (value) {
                    setState(() {
                      programList = value;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      programList = value;
                    });
                  },
                  dataSource: [
                    {
                      "display": "null",
                      "value": "null",
                    },
                  ],
                  textField: 'display',
                  valueField: 'value',
                ),
              ),
              Container(
                padding: EdgeInsets.all(16),
                child: DropDownFormField(
                  titleText: "Select Program*",
                  hintText: "Please choose one",
                  value: programList,
                  onSaved: (value) {
                    setState(() {
                      programList = value;
                    });
                  },
                  onChanged: (value) {
                    setState(() {
                      programList = value;
                    });
                  },
                  dataSource: [
                    {
                      "display": "ASHA",
                      "value": "ASHA",
                    },
                    {
                      "display": "Child Health CH",
                      "value": "Child Health CH",
                    },
                    {
                      "display": "Essential Drug ED",
                      "value": "Essential Drug ED",
                    },
                    {
                      "display": "Essential Medicines EM",
                      "value": "Essential Medicines EM",
                    },
                    {
                      "display": "GENERAL MEDICINES GM",
                      "value": "GENERAL MEDICINES GM",
                    },
                    {
                      "display": "Government Approved Lists MI GALMI",
                      "value": "Government Approved Lists MI GALMI",
                    },
                    {
                      "display": "Health and Wellness Center Drugs HWCD",
                      "value": "Health and Wellness Center Drugs HWCD",
                    },
                    {
                      "display": "Intensified Diarrhoea Control Fortnight IDCF",
                      "value": "Intensified Diarrhoea Control Fortnight IDCF",
                    },
                    {
                      "display": "Janani Shishu Suraksha Karyakaram JSSK",
                      "value": "Janani Shishu Suraksha Karyakaram JSSK",
                    },
                    {
                      "display": "National Deworming Day NDD",
                      "value": "National Deworming Day NDD",
                    },
                    {
                      "display":
                          "National Iodine Deficiency Disorder Control Programme NIDDCP",
                      "value":
                          "National Iodine Deficiency Disorder Control Programme NIDDCP",
                    },
                    {
                      "display": "National Mental Health Programme NMHP",
                      "value": "National Mental Health Programme NMHP",
                    },
                    {
                      "display":
                          "National Program for Palliative Care  New Initiatives under NCD",
                      "value":
                          "National Program for Palliative Care  New Initiatives under NCD",
                    },
                    // {
                    //   "display": "National Urban Health Mission NUHM",
                    //   "value": "National Urban Health Mission NUHM",
                    // },
                    // {
                    //   "display":
                    //       "National Viral Hepatitis Control Programme NVHCP",
                    //   "value":
                    //       "National Viral Hepatitis Control Programme NVHCP",
                    // },
                    // {
                    //   "display": "RCH",
                    //   "value": "RCH",
                    // },
                    // {
                    //   "display": "Weekly Iron Folic Acid Supplement WIFS",
                    //   "value": "Weekly Iron Folic Acid Supplement WIFS",
                    // },
                  ],
                  textField: "display",
                  valueField: "value",
                ),
              ),
              // Container(
              //   padding: EdgeInsets.all(16),
              //   child: DropDownFormField(
              //     titleText: 'DrugList*',
              //     hintText: 'Please choose one',
              //     value: drugList,
              //     onSaved: (value) {
              //       setState(() {
              //         drugList = value;
              //       });
              //     },
              //     onChanged: (value) {
              //       setState(() {
              //         drugList = value;
              //       });
              //     },
              //     dataSource: [
              //       {
              //         "display": " ",
              //         "value": "",
              //       },
              //     ],
              //     textField: "display",
              //     valueField: "value",
              //   ),
              // ),
              Container(
                padding: EdgeInsets.all(16),
                child: ChangeNotifierProvider<MyHomePageProvider>(
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
                                  tooltip:
                                      'represents description of packaging'),
                              DataColumn(
                                  label: Text('AVAILABLE QNTY'),
                                  tooltip:
                                      'represents qnty of drugs available'),
                            ],
                            rows: provider.data.drugList
                                .map((data) =>
                                    // we return a DataRow every time
                                    DataRow(
                                        // List<DataCell> cells is required in every row
                                        cells: [
                                          DataCell(Text(data.drugId)),
                                          DataCell(Text(data.drugName)),
                                          DataCell(Text(data.programmeId)),
                                          DataCell(Text(data.programmeName)),
                                          DataCell(
                                              Text(data.packingDescription)),
                                          DataCell(Text(
                                              data.availableQty.toString())),
                                        ]))
                                .toList(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
