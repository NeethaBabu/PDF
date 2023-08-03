import 'package:flutter/material.dart';
import 'package:neeproject/fivepdf.dart';

import 'package:neeproject/four.dart';
void main() {
  runApp(const four());
}
class four extends StatefulWidget {
  const four({super.key});

  @override
  State<four> createState() => _fourState();
}

class _fourState extends State<four> {

  String txt = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PDF Reader'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue[50],
              child: ListTile(
                leading: const Icon(Icons.bookmark,color: Colors.red,),
                title: const Text('Constitution 1',
                  textScaleFactor: 1.5,
                ),
                subtitle: Text("The Constitution of India is the supreme law of India.The document lays down the framework that demarcates fundamental political code, structure, procedures, powers, and duties of government institutions and sets out fundamental rights, directive principles, and the duties of citizens. It is the longest written national constitution in the world."),
                trailing: const Icon(Icons.picture_as_pdf),
                //  subtitle: const Text('kallane pidiche'),
                selected: true,
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => fivepdf()),

                    );

                  }
                  );
                },
              ),
            ),
          ),Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue[50],
              child: ListTile(
                leading: const Icon(Icons.bookmark,color: Colors.red,),
                title: const Text(
                  'Constitution 2',
                  textScaleFactor: 1.5,
                ),
                subtitle: Text("The Constitution of India is the supreme law of India.The document lays down the framework that demarcates fundamental political code, structure, procedures, powers, and duties of government institutions and sets out fundamental rights, directive principles, and the duties of citizens. It is the longest written national constitution in the world."),
                trailing: const Icon(Icons.picture_as_pdf),
                //  subtitle: const Text('kallane pidiche'),
                selected: true,
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => fivepdf()),

                    );

                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue[50],
              child: ListTile(
                leading: const Icon(Icons.bookmark,color: Colors.red,),
                title: const Text(
                  'Constitution 3',
                  textScaleFactor: 1.5,
                ),
                subtitle: Text("The Constitution of India is the supreme law of India.The document lays down the framework that demarcates fundamental political code, structure, procedures, powers, and duties of government institutions and sets out fundamental rights, directive principles, and the duties of citizens. It is the longest written national constitution in the world."),
                trailing: const Icon(Icons.picture_as_pdf),
                //  subtitle: const Text('kallane pidiche'),
                selected: true,
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => fivepdf()),
                    );

                  });
                },
              ),
            ),
          ),


          Text(
            txt,
            textScaleFactor: 2,
          )
        ],
      ),

    );
  }
}
