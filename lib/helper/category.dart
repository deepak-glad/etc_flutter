import 'package:etc_flutter/model/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<Data>(context);
    return Container(
      height: 190,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.4,
        ),
        itemCount: data.list.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              Image.asset(
                data.list[index].icon,
                height: 45,
              ),
              Text(
                data.list[index].name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  // fontStyle: FontStyle.normal,
                  fontFamily: 'Proxima',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
