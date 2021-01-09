import 'package:etc_flutter/model/slider_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SliderDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<SliderProvider>(context);
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.dataSlider.length,
        itemBuilder: (context, index) {
          var val = data.dataSlider[index];
          return Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54,
                    blurRadius: 2.0,
                    spreadRadius: 0.0,
                    // offset:
                  ),
                ]),
            width: MediaQuery.of(context).size.width - 40,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.black,
                        image: DecorationImage(
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.6),
                                BlendMode.dstATop),
                            image: AssetImage(val.image),
                            fit: BoxFit.cover),
                      ),
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          Image.asset(
                            val.logo,
                            height: 80,
                            width: 90,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  val.name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                ),
                                SizedBox(height: 6),
                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    val.description,
                                    overflow: TextOverflow.fade,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text('Kms away'),
                          SizedBox(height: 5),
                          Text(
                            val.dist.toString(),
                            style: TextStyle(
                                color: Theme.of(context).cardColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text('valid until'),
                          SizedBox(height: 5),
                          Text(
                            val.date,
                            style: TextStyle(
                                color: Theme.of(context).cardColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text('avg savings'),
                          SizedBox(height: 5),
                          Text(
                            val.saving,
                            style: TextStyle(
                                color: Theme.of(context).cardColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
