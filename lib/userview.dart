import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Userview extends StatefulWidget {
  const Userview({super.key});

  @override
  State<Userview> createState() => _UserviewState();
}

class _UserviewState extends State<Userview> {
  final ImagePicker _picker = ImagePicker();
  File? imgFile;

  Widget underline() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Container(
        height: 0.3,
        color: Colors.grey,
      ),
    );
  }

  Future<void> _onImageButtonPressed(
    ImageSource source, {
    required BuildContext context,
  }) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(source: source);
      setState(() {
        imgFile = File(pickedFile!.path);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        title: const Text(
          'Create profile',
          style: TextStyle(fontSize: 23, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.red,
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                  child: Text(
                    'STEP 1 OF 5',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Tell clients about your business',
                  style: TextStyle(fontSize: 19),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Share basic info about what you do.0',
                  style: TextStyle(color: Colors.grey.withOpacity(0.5)),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(23, 12, 23, 12),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                            height: 150,
                            color: Colors.deepPurple,
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                Center(
                                  child: Container(
                                    width: 120,
                                    height: 120,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(120)),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(120),
                                      child: imgFile == null
                                          ? const SizedBox.shrink()
                                          : InkWell(
                                              onTap: () {
                                                setState(() {
                                                  imgFile = null;
                                                });
                                              },
                                              child: Container(
                                                width: 44,
                                                height: 44,
                                                child: Image.file(
                                                  imgFile!,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 15,
                                  right: size.width / 4,
                                  child: InkWell(
                                    onTap: () {
                                      _onImageButtonPressed(ImageSource.gallery,
                                          context: context);
                                    },
                                    child: Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(120),
                                      ),
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        Container(
                          height: 100,
                          alignment: Alignment.center,
                          padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Colors.amber,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('First name'),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                            border: UnderlineInputBorder(),
                                            hintText: 'User Names First '),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Expanded(
                                child: Container(
                                  color: Colors.cyan,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('List name'),
                                      TextFormField(
                                        decoration: const InputDecoration(
                                            border: UnderlineInputBorder(),
                                            hintText: 'User Names Last'),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 100,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Label'),
                              TextFormField(
                                decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    hintText: 'Profession',
                                    hintStyle: TextStyle(fontSize: 20)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 100,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Short description (optional)'),
                              TextFormField(
                                decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    hintText: 'Short description (optional)',
                                    hintStyle: TextStyle(fontSize: 20)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 100,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Create URL'),
                              TextFormField(
                                decoration: const InputDecoration(
                                    border: UnderlineInputBorder(),
                                    hintText: 'Type your URL',
                                    hintStyle: TextStyle(fontSize: 20)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
