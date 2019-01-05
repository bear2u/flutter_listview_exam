import 'package:flutter/material.dart';
import 'package:flutter_listview_exam/src/itemModel.dart';
import 'package:flutter_listview_exam/src/widgets/custom_item_widget.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    List<ItemModel> list = [
      _buildItemModel("111"),
      _buildItemModel("222"),
      _buildItemModel("333"),
    ];

    final widgets = list.map((itemModel) => _buildChild(itemModel)).toList().cast<Widget>();
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Example'),
      ),
      body: ListView.builder(
          itemCount: widgets.length,
          itemBuilder: (context, idx) {
            return widgets[idx];
          }
      )
    );
  }

  _buildChild(ItemModel itemModel) {
    return CustomItemWidget(itemModel: itemModel,);
  }

  _buildItemModel(String title) {
    return ItemModel(
      image: "assets/images/img_207001883.jpg",
      title: title,
      star: 1,
      desc: "dssdss",
      publisher: "한빛",
      pubdate: "2019.1.5",
      author: "홍길동",
    );
  }
}

