import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';

class testpage extends StatefulWidget {
  const testpage({super.key});

  @override
  State<testpage> createState() => _testpageState();
}

class _testpageState extends State<testpage> {
  final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkText();
  }

  checkText() async {
    final ImagePicker picker = ImagePicker();
// Pick an image.
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    InputImage img = InputImage.fromFilePath(image!.path.toString());
    final RecognizedText recognizedText =
        await textRecognizer.processImage(img);

    print(recognizedText.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
