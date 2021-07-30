import 'package:flutter/material.dart';

class Ep13Page extends StatefulWidget {
  const Ep13Page({Key? key}) : super(key: key);

  @override
  _Ep13PageState createState() => _Ep13PageState();
}

class _Ep13PageState extends State<Ep13Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ep13 - PageBasic widget'),
      ),
      body: Column(
        children: [
          Text('ListView - Horizontal'),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                // ListTile(
                //   trailing: Icon(Icons.theaters),
                //   title: Text('Profile'),
                // ),
                // ListTile(
                //   trailing: Icon(Icons.account_box_rounded),
                //   title: Text('Profile-2'),
                // ),
                // ListTile(
                //   trailing: Icon(Icons.ac_unit_sharp),
                //   title: Text('Profile-3'),
                // ),
                // Container(
                //   padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                //   child: Image(
                //     height: 200,
                //     width: 200,
                //     image: AssetImage('assets/images/2.jpg'),
                //   ),
                // ),

                CardWidget(
                    imageAsset: 'assets/images/1.jpg',
                    text: 'ชื่อ 1',
                    description: 'รายละเอียด1'),
                CardWidget(
                    imageAsset: 'assets/images/2.jpg',
                    text: 'ชื่อ 2',
                    description: 'รายละเอียด2'),
                CardWidget(
                    imageAsset: 'assets/images/3.jpg',
                    text: 'ชื่อ 3',
                    description: 'รายละเอียด3'),
                CardWidget(
                    imageAsset: 'assets/images/1.jpg',
                    text: 'ชื่อ 1',
                    description: 'รายละเอียด1'),
                CardWidget(
                    imageAsset: 'assets/images/2.jpg',
                    text: 'ชื่อ 2',
                    description: 'รายละเอียด2'),
                CardWidget(
                    imageAsset: 'assets/images/3.jpg',
                    text: 'ชื่อ 3',
                    description: 'รายละเอียด3'),
                CardWidget(
                    imageAsset: 'assets/images/1.jpg',
                    text: 'ชื่อ 1',
                    description: 'รายละเอียด1'),
                CardWidget(
                    imageAsset: 'assets/images/2.jpg',
                    text: 'ชื่อ 2',
                    description: 'รายละเอียด2'),
                CardWidget(
                    imageAsset: 'assets/images/3.jpg',
                    text: 'ชื่อ 3',
                    description: 'รายละเอียด3'),
              ],
            ),
          ),
          Text('ListView - vertical'),
          Container(
            height: 2,
            color: Colors.green,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                // Container(
                //   padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                //   child: Image(
                //     height: 200,
                //     width: 200,
                //     image: AssetImage('assets/images/2.jpg'),
                //   ),
                // ),
                CardWidget(
                    imageAsset: 'assets/images/1.jpg',
                    text: 'ชื่อ 1',
                    description: 'รายละเอียด1'),
                CardWidget(
                    imageAsset: 'assets/images/2.jpg',
                    text: 'ชื่อ 2',
                    description: 'รายละเอียด2'),
                CardWidget(
                    imageAsset: 'assets/images/3.jpg',
                    text: 'ชื่อ 3',
                    description: 'รายละเอียด3'),
                CardWidget(
                    imageAsset: 'assets/images/1.jpg',
                    text: 'ชื่อ 1',
                    description: 'รายละเอียด1'),
                CardWidget(
                    imageAsset: 'assets/images/2.jpg',
                    text: 'ชื่อ 2',
                    description: 'รายละเอียด2'),
                CardWidget(
                    imageAsset: 'assets/images/3.jpg',
                    text: 'ชื่อ 3',
                    description: 'รายละเอียด3'),
                CardWidget(
                    imageAsset: 'assets/images/1.jpg',
                    text: 'ชื่อ 1',
                    description: 'รายละเอียด1'),
                CardWidget(
                    imageAsset: 'assets/images/2.jpg',
                    text: 'ชื่อ 2',
                    description: 'รายละเอียด2'),
                CardWidget(
                    imageAsset: 'assets/images/3.jpg',
                    text: 'ชื่อ 3',
                    description: 'รายละเอียด3'),
              ],
            ),
          ),
          Text('ListTile'),
          Container(
            height: 2,
            color: Colors.green,
          ),
          ListTile(
            trailing: Icon(Icons.delivery_dining),
            title: Text('ค่าจัดส่ง'),
          ),
          ListTile(
            trailing: Icon(Icons.monetization_on_rounded),
            title: Text('ราคา'),
          ),
          ListTile(
            trailing: Icon(Icons.money_outlined),
            title: Text('ราคารวม'),
          ),
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  final String imageAsset;
  final String text;
  final String description;

  const CardWidget({
    Key? key,
    required this.imageAsset,
    required this.text,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            height: 100,
            width: 150,
            image: AssetImage(imageAsset),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(description),
              )
            ],
          ),
        ],
      ),
    );
  }
}
