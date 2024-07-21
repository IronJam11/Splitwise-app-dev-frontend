import 'package:flutter/material.dart';
import 'package:splitwise_cheap_version/boot.dart';


class Hooray extends StatelessWidget {
  const Hooray({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 200, 
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: hexToColor("#4CBB9B")
              ),
              child: const Icon(Icons.check,
              size: 100,
              color: Colors.white,
              ), 
            ),
            Text("Hurray!!",
            style: TextStyle(
              fontSize: 40,
              color: hexToColor("#616161"),
            ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: RichText(
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Your account with', // Text to be bold
                      style: TextStyle(
                        fontWeight: FontWeight.normal, // Bold style
                        fontSize: 18.0, // Font size
                        color: Colors.black, // Text color
                      ),
                    ),
                    TextSpan(
                      text: ' Subodh Kohle', // Text to be plain
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // Normal style
                        fontSize: 18.0, // Font size
                        color: Colors.black, // Text color
                      ),
                    ),
                    TextSpan(
                      text: ' has been settled up', // Text to be plain
                      style: TextStyle(
                        fontWeight: FontWeight.normal, // Normal style
                        fontSize: 18.0, // Font size
                        color: Colors.black, // Text color
                      ),
                    ),
                  ],
                ),
              ),
              ),
            ),

            MaterialButton(
              onPressed: (){},
              minWidth: 200,
              height: 50,
              color: hexToColor("#4CBB9B"),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
                side: BorderSide(color: hexToColor("#4CBB9B"), 
                width: 2.0,
              ),
              ),
              child: const Text("Done",
              style: TextStyle(
                color: Colors.white,
                ),
              ),
              ),
          ],
        ),
      )
    );
  }
}