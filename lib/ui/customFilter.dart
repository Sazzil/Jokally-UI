import 'package:flutter/material.dart';

class CustomFilter extends StatefulWidget {
  CustomFilter({Key key}) : super(key: key);

  @override
  _CustomFilterState createState() => _CustomFilterState();
}

class _CustomFilterState extends State<CustomFilter> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
      elevation: 0.8,
      backgroundColor: Colors.transparent,
      child: filterContent(context),
    );
  }

  Widget filterContent(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 0.0, right: 0.0),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 18.0),
            margin: EdgeInsets.only(top: 13.0),
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(3.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.white54,
                    blurRadius: 0.0,
                    offset: Offset(0.0, 0.0),
                  ),
                ]),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: _filterLists(context),
                    ),
                  ),
                  SizedBox(height: 24.0),
                  InkWell(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Close",
                          style:
                              TextStyle(fontSize: 18.0, color: Colors.black45),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _filterLists(BuildContext context) => Column(
      children: <Widget>[
        ListTile(
          title: Text('Searching in'),
          trailing: Text('Moenchengladbach'),
          dense: true,
        ),
        Divider(),
        ListTile(
          title: Text('Distances in'),
          trailing: Text('km'),
          dense: true,
        ),
        Divider(),
        ListTile(
          title: Text('Maximum distance'),
          trailing: Text('10km'),
          dense: true,
        ),
        Divider(),
        ListTile(
          title: Text('A range Slider'),
        ),
        Divider(),
        ListTile(
          title: Text(
            'Preffered Stores',
            textAlign: TextAlign.center,
          ),
        ),
        Divider(),
        ListTile(
          title: Text('3 buttons'),
        ),
        Divider(),
        ListTile(
          title: Text('Favourite store notification'),
          trailing: Text('A switch'),
          dense: true,
        ),
        Divider(),
        ListTile(
          title: Text('Email Notification'),
          trailing: Text('A switch'),
          dense: true,
        ),
        Divider(),
      ],
    );
