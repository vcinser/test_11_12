import 'package:flutter/material.dart';
import 'package:test_11_12/choosedetail.dart';

class Videodetil extends StatefulWidget {
  const Videodetil({super.key});

  @override
  State<Videodetil> createState() => _VideodetilState();
}

class _VideodetilState extends State<Videodetil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Publish video',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Container(
            //   height: 60,
            //   alignment: Alignment.centerLeft,
            //   child: Row(
            //     children: [
            //       Container(
            //         width: 60,
            //         height: 60,
            //         child: ElevatedButton(
            //           style: ButtonStyle(
            //         backgroundColor: MaterialStateProperty.all(Colors.white),),
            //             onPressed: () {
            //               Navigator.pop(context);
            //             },
            //             child: Icon(Icons.arrow_back_outlined,color: Colors.black,)),
            //       ),
            //       Container(
            //         alignment: Alignment.center,
            //         child: const Text('Publish video',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
            //       )
            //     ],
            //   ),
            // ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 400,
                    color: Colors.grey.withOpacity(0.2),
                    padding: const EdgeInsets.fromLTRB(80, 15, 80, 15),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'assets/images/kang.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(80),
                            ),
                            child: const Icon(
                              Icons.play_arrow,
                              size: 50,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 8,
                          bottom: 8,
                          right: 8,
                          child: Container(
                              height: 44,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(80),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                'CHANGE THUMBNAIL',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 226,
                    color: Colors.grey.withOpacity(0.2),
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            // color: Colors.red,
                            padding: const EdgeInsets.fromLTRB(0, 12, 0, 0),
                            height: 50,
                            child: const Text(
                              'Change thumbnail',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                            height: 70,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(12)),
                              alignment: Alignment.center,
                              child: const Text(
                                'Choose a frame',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.blue),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(14, 8, 14, 8),
                            height: 70,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(12)),
                              alignment: Alignment.center,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Choosedetail()));
                                },
                                child: const Text(
                                  'Choose from library',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.blue),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.grey.withOpacity(0.2),
                    height: 70,
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      alignment: Alignment.center,
                      child: InkWell(
                          onTap: () {
                            print('Cancel');
                          },
                          child: const Text(
                            'Cancel',
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
