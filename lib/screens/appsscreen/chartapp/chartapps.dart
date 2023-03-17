import 'package:flutter/material.dart';
import 'package:playstore/utils/list.dart';

class ChartApps extends StatefulWidget {
  const ChartApps({Key? key}) : super(key: key);

  @override
  State<ChartApps> createState() => _ChartAppsState();
}

class _ChartAppsState extends State<ChartApps> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: total.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(total[index],height: 100,width: 100,fit: BoxFit.cover,)),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(totaln2[index],style: TextStyle(fontWeight: FontWeight.bold),),
                            Text(totaln[index]),
                            Row(
                              children: [
                                Text(totalr[index]),
                                Icon(Icons.star,size: 20,)
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
