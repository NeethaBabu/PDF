import 'package:flutter/material.dart';
import 'package:neeproject/Home.dart';
import 'package:neeproject/four.dart';
void main() {
  runApp(const thirdpage());
}
class thirdpage extends StatefulWidget {
  const thirdpage({super.key});

  @override
  State<thirdpage> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdpage> {

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
                leading: const Icon(Icons.book_outlined,color: Colors.red,),
                title: const Text('Constitution 1',
                  textScaleFactor: 1.5,
                ),
                subtitle: Text("article about constitution"),
                trailing: const Icon(Icons.arrow_right),
                //  subtitle: const Text('kallane pidiche'),
                selected: true,
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const four()),

                    );

                  });
                },
              ),
            ),
          ),Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.blue[50],
              child: ListTile(
                leading: const Icon(Icons.book_outlined,color: Colors.red,),
                title: const Text(
                  'Constitution 2',
                  textScaleFactor: 1.5,
                ),
                subtitle: Text("article about constitution"),
                trailing: const Icon(Icons.arrow_right),
                //  subtitle: const Text('kallane pidiche'),
                selected: true,
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const four()),

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
                leading: const Icon(Icons.book_outlined,color: Colors.red,),
                title: const Text(
                  'Constitution 3',
                  textScaleFactor: 1.5,
                ),
                subtitle: Text("article about constitution"),
                trailing: const Icon(Icons.arrow_right),
                //  subtitle: const Text('kallane pidiche'),
                selected: true,
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const four()),

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
