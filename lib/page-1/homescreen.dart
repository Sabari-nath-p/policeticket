import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';

import '../utils.dart';

class homescreen extends StatelessWidget {
   homescreen({super.key});
  var number_plate = TextEditingController();
  final textRecognizer = TextRecognizer(script: TextRecognitionScript.latin);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //root -- container containes padding and all other element in the homescreen
        child: Container(
          
    
          //coloring 
          color: Colors.white,
    
    
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: double.infinity,
            
            
          //column to includes all element in downwards
          child:Column(
            children: [
            
              // row-section include top header that containes name and Profile Photo
              Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(child: Container(
            
                    //coloring
                    color: Colors.white,
            
            
                    padding: EdgeInsets.all(15),
                    child: Text('Ansana',style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 24),),
                  )),
                  Expanded(child: Container( color: Colors.white,padding: EdgeInsets.all(9),alignment: Alignment.centerRight,child: CircleAvatar(backgroundImage: NetworkImage('https://teqip.in/wp-content/uploads/2022/12/kajal-agarwal.jpg'),)))
                ],
              ),
            
              ///Container for adding wallet
              ///Defined height ///
              Container(
            
                //coloring
                color: Colors.white,
            
            
                height: 200,
                width: double.infinity,
                padding: EdgeInsets.only(
                  top: 20,bottom: 20                ),
            
                  //coloring
                  child: Container(color: Colors.blue[100],),
              ),
            
              //Container to add photo and textbox to add car number
              Container(
                padding: EdgeInsets.only(
                  top: 20,bottom: 20
                ),
                height: 300,
            
                //coloring
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: GestureDetector(
                          onTap: (){
            
                          },
                          child: Container(
                                              decoration: BoxDecoration(
                          color: Colors.blue[200],
                          border: Border.all(width: 2,color: Colors.grey[300]!),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20))
                                              ),
                                              height: 90,
                                              child: Center(
                            child: Text('Gallery',style: SafeGoogleFont(
                                                'Prompt',
                                                fontSize: 20,
                                                fontWeight: FontWeight.w400,
                                               
                                                color: Color(0xff000000),
                                              ),),
                          ),
                                              
                                            ),
                        )),
                    Expanded(child: GestureDetector(
                      onTap: () {
                        checkText();
                        
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue[200],
                          border: Border.all(width: 2,color: Colors.grey[300]!),
                          borderRadius: BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20))
                          
                        ),
                        height: 90,
                        child: Center(
                          child: Text('Camera',style: SafeGoogleFont(
                                              'Prompt',
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400,
                                             
                                              color: Color(0xff000000),
                                            ),),
                        ),
                        
                      ),
                    ))
                      ],
                    ),
                    SizedBox(
                      height: 20,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2,color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: TextFormField(
                        controller: number_plate,
                        decoration: InputDecoration(
                          border: InputBorder.none
                        ),
                        
                      ),
                    ),
                    Expanded(child: Container(
                      padding: EdgeInsets.only(top: 15,bottom: 5,right: 10,left: 10),
                      child: Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue,
                        ),
                        child: Center(child: Text('Submit',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),)),
                      ),
                    ))
                  ],
                ),
              ),
            
              //Footer - Section
              Expanded(
                child: Container(
                 padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Text('Previous Report',style: TextStyle(fontSize: 15),)
                          ],
                        ),
                        
                      ),
                      SizedBox(
                        height: 15,
                      ),
                       Expanded(child: Container(
                height: 100,
                color: Colors.blue[300],
                
              ))
                      
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
  //Functions
 checkText() async {
    final ImagePicker picker = ImagePicker();
// Pick an image.
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    InputImage img = InputImage.fromFilePath(image!.path.toString());
    final RecognizedText recognizedText =
        await textRecognizer.processImage(img);

    print(recognizedText.text);
    number_plate.text = recognizedText.text;
  }
}



