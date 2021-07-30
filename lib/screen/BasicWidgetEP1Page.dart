import 'package:flutter/material.dart';
import 'package:flutter001/screen/Ep14Page.dart';

class BasicWidgetEp1page extends StatefulWidget {
  const BasicWidgetEp1page({Key? key}) : super(key: key);

  @override
  _BasicWidgetEp1pageState createState() => _BasicWidgetEp1pageState();
}

class _BasicWidgetEp1pageState extends State<BasicWidgetEp1page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BasicWidgetEp1page'),
        ),
        body: ListView(
          //scrollDirection: Axis.vertical,
          children: [
            ListViewItemWidget(),
            ListViewItemWidget(),
            ListViewItemWidget(),
            ListViewItemWidget(),
          ],
        )

        // Center( child: Text('test 11'), ),
        );
  }
}

//====================== CLass ListViewItemWidget =========

class ListViewItemWidget extends StatelessWidget {
  const ListViewItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      color: Colors.amber,
      height: 100,
      width: 120,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        //====================== ROW =========

        child: Row(
          children: [
            Container(
              //======================IMAGE ROW 1=========
              // height: 150,
              // width: 150,
              child: Image.network(
                  'https://www.planetware.com/photos-large/THA/thailand-railay-beach.jpg'),
            ),

            //======================ROW 2=========
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Thailand',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'ThailandldasdasdsadThailandldasdasdsadThailandldasdasdsadThailandldasdasdsadThailandldasdasdsad',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                    ),
                    maxLines: 2,
                  ),
                ),
              ],
            )),
            //======================Row 3 =========
            Text(
              '250',
              style:
                  TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
