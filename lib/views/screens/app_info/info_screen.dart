import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 242, 242),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 80),
              const Text(
                "This QR scanner application provides an intuitive and seamless experience for users to scan QR codes and generate QR codes from custom text inputs. The app offers three main features:",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 30),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "QR Code Scanning: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text:
                          "Users can easily scan QR codes, and once a QR code is successfully scanned, the app detects the encoded data, such as a link, and displays it to the user. Additionally, users have the option to directly open the scanned link within their browser or another appropriate application, providing a fast and convenient way to access websites or resources embedded in QR codes. After scanning, users can also share the scanned link with others via platforms like social media, messaging apps, or email.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    TextSpan(
                      text: "\n\nQR Code Generation from Text: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text:
                          "The app allows users to generate QR codes from custom text inputs. Users can enter any text they want, such as a URL, message, or any piece of information, and the app will convert that input into a QR code. Once generated, the QR code can be viewed, and users are provided with the option to share the QR code with others, whether by saving it, sharing it via messaging apps, or social media.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    TextSpan(
                      text: "\n\nLink Sharing: ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text:
                          "After scanning or generating a QR code, the app integrates a sharing feature that enables users to distribute the scanned or generated QR code data easily. This sharing functionality supports various channels, making it quick and simple to share important information.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
