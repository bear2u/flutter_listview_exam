import 'package:flutter/material.dart';
import 'package:flutter_listview_exam/src/itemModel.dart';

class CustomItemWidget extends StatelessWidget {

  ItemModel itemModel;

  CustomItemWidget({this.itemModel});

  @override
  Widget build(BuildContext context) {
    TextStyle titleTextStyle = Theme.of(context).textTheme.title;
    TextStyle descriptionTextStyle = Theme.of(context).textTheme.body1;
    return Container(
        height: 300,
        child: Padding(padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Image.asset(itemModel.image),
              Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    width: double.maxFinite,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(itemModel.title, style: titleTextStyle,),
                              Text('${itemModel.star}',style: titleTextStyle,),
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                              color: Colors.red,
                              alignment: Alignment.centerLeft,
                              child: Text(itemModel.desc, textAlign: TextAlign.center, style: descriptionTextStyle,),
                            )
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(itemModel.author, style: descriptionTextStyle,),
                              Text(itemModel.publisher, style: descriptionTextStyle,),
                              Text(itemModel.pubdate, style: descriptionTextStyle,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
              )
            ],
          ),
        )
    );
  }
}