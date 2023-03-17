import 'package:flutter/material.dart';

import '../../utils/list.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Musics Apps',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: SizedBox(
                  height: 130,
                  child: ListView.builder(
                    itemCount: img.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'social',
                                    arguments: index);
                              },
                              child: Container(
                                color: Colors.green,
                                child: SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: Image.asset(
                                    img[index],
                                    fit: BoxFit.cover,
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(name[index]),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Social Apps',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: SizedBox(
                  height: 130,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: socialimg.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'music',
                                    arguments: index);
                              },
                              child: Image.asset(
                                socialimg[index],
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(socialname[index]),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'E-commerce Apps',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: SizedBox(
                  height: 130,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: socialimg.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'del',
                                    arguments: index);
                              },
                              child: Image.asset(
                                del[index],
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(delname[index]),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Musics Apps',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: SizedBox(
                  height: 130,
                  child: ListView.builder(
                    itemCount: img.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'social',
                                    arguments: index);
                              },
                              child: Container(
                                color: Colors.green,
                                child: SizedBox(
                                  height: 100,
                                  width: 100,
                                  child: Image.asset(
                                    img[index],
                                    fit: BoxFit.cover,
                                    height: 100,
                                    width: 100,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(name[index]),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Social Apps',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: SizedBox(
                  height: 130,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: socialimg.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'music',
                                    arguments: index);
                              },
                              child: Image.asset(
                                socialimg[index],
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(socialname[index]),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'E-commerce Apps',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Icon(Icons.arrow_forward),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: SizedBox(
                  height: 130,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: socialimg.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(2),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'del',
                                    arguments: index);
                              },
                              child: Image.asset(
                                del[index],
                                fit: BoxFit.cover,
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(delname[index]),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
