import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});
  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  String txt = "Click Me!";
  Color bg = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Custom Button"),
      ),
      body: GestureDetector(
        onTap: (){
          setState(() {
            txt = "I am Clicked!";
            bg = Colors.red;
          });
        },
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(20),
          height: 100,
          width: 400,
          decoration:  BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: bg,
                )
              ],
              border: const Border(
                left: BorderSide(
                  color: Colors.blue,
                  width: 20,
                ),
                right: BorderSide(
                  color: Colors.red,
                  width: 20,
                ),
                top: BorderSide(
                  color: Colors.blue,
                  width: 5,
                ),
                bottom: BorderSide(
                  color: Colors.blue,
                  width: 5,
                ),
              )),
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            const Icon(
                Icons.ads_click,
                color: Colors.white,
                size: 30,
              ),
              Text(
                txt,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
                textAlign: TextAlign.end,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
