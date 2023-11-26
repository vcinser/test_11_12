import 'package:flutter/material.dart';
import 'package:test_11_12/chatdtail.dart';
import 'package:test_11_12/profiledt..dart';

class Shoping extends StatefulWidget {
  const Shoping({super.key});

  @override
  State<Shoping> createState() => _ShopingState();
}


class _ShopingState extends State<Shoping> {
TextEditingController textEditingController = TextEditingController();
  

String desc =
    "Flutter\n0. 친구(FIND),\n1. 로또(firebase storage -> 업데이트, 다운로드),\n2. 로또 윈도우, 맥 프로그램으로 컨버팅,\n3. 인생네컷(카메라, 사진편집, 스티커 꾸미기, 공유),\n4. 보드게임(블투?, 주사위 얼굴 만들기) -> Flame엔진,\n5. Flutter Web 공부";

String admin = 'Heo';

List userlist = [
  {
    'username': 'Heo',
    'messge': '안녕하세요 허장원입니다',
    'data': '12:50pm',
  },
   {
    'username': 'Kim',
    'messge': '안녕하세요 김입니다',
    'data': '12:58pm',
  },
];

 Widget hline() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Container(
        height: 0.3,
        color: Colors.grey,
      ),
    );
  }

show() {
    return showModalBottomSheet<void>(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Container(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Container(
                  padding: const EdgeInsets.all(16),
                   decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                         ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                       ),
                      Text('Add to conversation',style: TextStyle(fontSize: 22),),
                      SizedBox(
                        height: 15,
                       ),
                      Container(
                        height: 53,
                        decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(16),
                         ),
                         padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                         child: Row(
                          children: [
                            Icon(Icons.image_outlined,size: 40,),
                            SizedBox(width: 8,),
                            Text('Upload image',style: TextStyle(fontSize: 20),),
                          ],
                         ),
                       ),
                       SizedBox(
                        height: 10,
                       ),
                        Container(
                        height: 53,
                        decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(16),
                         ),
                         padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                         child: Row(
                          children: [
                            Icon(Icons.attach_email_outlined,size: 40,),
                            SizedBox(width: 8,),
                            Text('Attach document',style: TextStyle(fontSize: 20),),
                          ],
                         ),
                       ),
                       SizedBox(
                        height: 10,
                       ),
                       hline(),
                       SizedBox(
                        height: 10,
                       ),
                       Container(
                        height: 53,
                        decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(16),
                         ),
                         padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                         child: Row(
                          children: [
                            Icon(Icons.voice_chat,size: 40,),
                            SizedBox(width: 8,),
                            Text('Send invoice',style: TextStyle(fontSize: 20),),
                          ],
                         ),
                       ),
                       SizedBox(
                        height: 10,
                       ),
                       Container(
                        height: 53,
                        decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(16),
                         ),
                         padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                         child: Row(
                          children: [
                            Icon(Icons.local_laundry_service_outlined,size: 40,),
                            SizedBox(width: 8,),
                            Text('Start free live session now',style: TextStyle(fontSize: 20),),
                          ],
                         ),
                       ),
                       SizedBox(
                        height: 10,
                       ),
                       Container(
                        height: 53,
                        decoration: BoxDecoration(
                        color: Colors.blue.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(16),
                         ),
                         padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                         child: Row(
                          children: [
                            Icon(Icons.calendar_month,size: 40,),
                            SizedBox(width: 8,),
                            Text('Schedule new live session',style: TextStyle(fontSize: 20),),
                          ],
                         ),
                       ),
                         SizedBox(
                        height: 30,
                       ),
                    ],
                  ),
                ),
              );
            },
          );
        });
  }





Widget chatItem(Map<String, dynamic> map) {
  if (map['username'] == admin) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.bottomRight,
            child: Text(map['data']),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(80, 0, 1, 0),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(4),
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Text(map['messge'],style: TextStyle(color: Colors.white),),
            ),
          )
        ],
      ),
    );
  } else {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text(map['data']),
          ),
          const SizedBox(
            height: 16,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(1, 0, 80, 0),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  topLeft: Radius.circular(4),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Text(map['messge'],),
            ),
          )
        ],
      ),
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                  height: 50,
                  // color: Colors.red,
                  child: Row(
                    children: [
                      Container(
                        width: 60,
                        alignment: Alignment.center,
                        // color: Colors.amber,
                        child: const Icon(Icons.arrow_back_ios_new),
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.green,
                          child: Stack(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Profiledt()),
                                      );
                                      },
                                      child: Container(
                                        width: 45,
                                        height: 45,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                        ),
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            child: Image.asset(
                                              'assets/images/kang.jpeg',
                                              fit: BoxFit.cover,
                                            )),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap:() {
                                        Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Chatdtail()),
                                      );
                                    },
                                    child: Container(
                                      padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                      child: Text(
                                        'Emma Jones',
                                        style: TextStyle(fontSize: 25),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 60,
                        alignment: Alignment.center,
                        // color: Colors.amber,
                        child: const Icon(Icons.warning_amber_rounded),
                      ),
                    ],
                  )),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(9, 0, 9, 0),
                    child: ListView.builder(
                      itemCount: userlist.length,
                      itemBuilder: (context, index) {
                        var item = userlist[index];
                        return Column(
                          children: [
                            index == 0
                                ? Container(
                                    alignment: Alignment.center,
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 30, 0, 0),
                                    child: Column(
                                      children: [
                                        const Icon(
                                          Icons.lock,
                                          size: 45,
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          desc,
                                          textAlign: TextAlign.center,
                                        )
                                      ],
                                    ),
                                  )
                                : const SizedBox.shrink(),
                            chatItem(item)
                          ],
                        );
                      },
                    )),
              ),
              InkWell(
                onTap: () {
                  show();
                },
                child: Container(
                  height: 60,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: Colors.grey.withOpacity(0.3))),
                          child: const Icon(
                            Icons.add,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Expanded(
                          child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: TextFormField(
                              controller: textEditingController,
                            ),
                          ),
                        ),
                      )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 70,
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Icon(
                            Icons.videocam,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
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
