import 'package:flutter/material.dart';
import 'package:test_11_12/shareview.dart';
import 'package:test_11_12/userview.dart';

class Choosedetail extends StatefulWidget {
  const Choosedetail({super.key});

  @override
  State<Choosedetail> createState() => _ChoosedetailState();
}

class _ChoosedetailState extends State<Choosedetail> {
  List list = [
    {
      'image': "assets/images/kang.jpeg",
      'name': 'Floyd Miles',
    },
    {
      'image': "assets/images/kang.jpeg",
      'name': 'Darrell Steward',
    },
    {
      'image': "assets/images/kang.jpeg",
      'name': 'Theresa Webb',
    },
    {
      'image': "assets/images/kang.jpeg",
      'name': 'Cody Fisher',
    },
  ];

  List checklist = [];

  checkicon(Color colors) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Icon(
        Icons.check,
        color: Colors.white,
      ),
    );
  }

  bool status = false; //모두 선택이 안된 상태.

  allCheck() {
    if (status) {
      return 'unselect All';
    } else {
      return 'select All';
    }
  }

  barallCheck() {}

  Widget item(Map<String, dynamic> map, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          checklist[index] = !checklist[index];
          //   if (checklist[index]) {
          //   checklist[index] = false;
          // }else{
          //   checklist[index] = true;
          // }
        });
      },
      child: Container(
        height: 60,
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    map['image'],
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(child: Text(map['name'])),
            checklist[index] ? checkicon(Colors.red) : checkicon(Colors.blue),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    for (var i = 0; i < list.length; i++) {
      checklist.add(false);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send to indivdual',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              height: 70,
              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                      child: Icon(Icons.search,
                          size: 35, color: Colors.grey.withOpacity(0.9)),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(4, 0, 0, 0),
                      child: Text(
                        'Search',
                        style: TextStyle(
                            fontSize: 22, color: Colors.grey.withOpacity(0.9)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 700,
                decoration: BoxDecoration(
                  // color: Colors.green.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              height: 130,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.privacy_tip_rounded,
                                    size: 40,
                                  ),
                                  Text('PRIVATE'),
                                  Text(
                                    'Can only be viewed by the client',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 130,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.shopping_bag,
                                    size: 40,
                                  ),
                                  Text('SECURE'),
                                  Text(
                                    'Cannot be shared or forwarded with anyone else',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 130,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.expand_circle_down_outlined,
                                    size: 40,
                                  ),
                                  Text('EXCLUSIVE'),
                                  Text(
                                    'Cannot be downloaded or saved',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.5)),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Userview()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person_add_alt_1_rounded,
                                size: 30,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Add new client',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.3)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                              height: 60,
                              child: Row(
                                children: [
                                  Text(
                                    'All Clients',
                                    style: TextStyle(fontSize: 23),
                                  ),
                                  Expanded(child: Container()),
                                  InkWell(
                                      onTap: () {
                                        if (status == false) {
                                          status = true;
                                          for (var i = 0;
                                              i < checklist.length;
                                              i++) {
                                            setState(() {
                                              checklist[i] = true;
                                            });
                                          }
                                        } else {
                                          status = false;
                                          for (var i = 0;
                                              i < checklist.length;
                                              i++) {
                                            setState(() {
                                              checklist[i] = false;
                                            });
                                          }
                                        }
                                      },
                                      child: Text(allCheck())),
                                ],
                              ),
                            ),
                            Container(
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: list.length,
                                itemBuilder: (context, index) {
                                  var map = list[index];
                                  return item(map, index);
                                },
                              ),
                            ),
                            Container(
                              height: 60,
                              padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            12, 0, 0, 0),
                                        child: Text(
                                          'Send massage',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        )),
                                    Expanded(
                                        child: Container(
                                      padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                                    )),
                                    Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 12, 0),
                                        child: Text(
                                          '4 Selected',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        )),
                                    Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 12, 0),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Shareview()));
                                          },
                                          child: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: Colors.white,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
