import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_scaner/views/screens/navigation_bar/navigation_bar.dart';
import 'package:share_plus/share_plus.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class TextQrGenerate extends StatefulWidget {
  const TextQrGenerate({super.key});

  @override
  State<TextQrGenerate> createState() => _TextQrGenerateState();
}

class _TextQrGenerateState extends State<TextQrGenerate> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff333333),
      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    ZoomTapAnimation(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const NavigationBars();
                            },
                          ),
                        );
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(241, 25, 25, 25),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Color(0xffFDB623),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    const Text(
                      "Text QR",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xffD9D9D9),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 100),
                Center(
                  child: Container(
                    width: 336,
                    height: 335,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: const Border.symmetric(
                        horizontal: BorderSide(
                          color: Color(0xffFDB623),
                          width: 2,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 30),
                        Image.asset(
                          "assets/images/text2.png",
                          width: 60,
                          height: 60,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 40),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: TextFormField(
                                controller: textController,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  hintText: "Enter Text",
                                  hintStyle: TextStyle(
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                validator: (value) {
                                  if (textController.text.isEmpty) {
                                    return "Iltimos text kiriting!";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        ZoomTapAnimation(
                          onTap: () {
                            if (textController.text.isNotEmpty) {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          const Text(
                                            "Text QR",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          SizedBox(
                                            width: 200,
                                            height: 200,
                                            child: QrImageView(
                                              data: textController.text,
                                              version: QrVersions.auto,
                                              size: 200.0,
                                            ),
                                          ),
                                          const SizedBox(height: 20),
                                          IconButton(
                                            onPressed: () {
                                              Share.share(
                                                  'QR Code text: ${textController.text}');
                                            },
                                            icon: const Icon(Icons.share),
                                            color: const Color.fromARGB(
                                                202, 5, 85, 232),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            }
                          },
                          child: Container(
                            width: 153,
                            height: 46,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xffFDB623),
                            ),
                            child: const Center(
                              child: Text(
                                "Generate QR Code",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
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
      ),
    );
  }
}
