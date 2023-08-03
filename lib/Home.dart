import 'package:flutter/material.dart';
import 'package:neeproject/thirdpage.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int selectedPage=0;
  late final PageController _pageController;
  List<Widget> wlist = [P1(), P2()];
  onNext(int s){
    if (_pageController.hasClients) {
      _pageController.animateToPage(s, duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    }
  }
  @override
  void initState() {
    selectedPage = 0;
    _pageController = PageController(initialPage: selectedPage);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final pageCount = wlist.length;

    return Scaffold(
      appBar: AppBar(title: Text('PDF Reader'),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (page) {
                  setState(() {
                    selectedPage = page;
                  });
                },
                children: List.generate(pageCount, (index) {
                  return wlist[index];
                }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: PageViewDotIndicator(
                currentItem: selectedPage,
                count: pageCount,
                unselectedColor: Colors.black26,
                selectedColor: Colors.blue,
                duration: Duration(milliseconds: 20),
                boxShape: BoxShape.circle,
              ),
            ),

            Container(
              child: ElevatedButton(
                child: Text('Next'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lightBlue,
                  textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontStyle: FontStyle.normal),
                ),
                onPressed: () {
                 setState(() {
                   if(selectedPage<1) {
                     selectedPage = selectedPage + 1;
                     onNext(selectedPage);
                   }
                   else{
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => const thirdpage()),
                     );
                   }
                 });
                },
              ),
            ),


            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}

class P1 extends StatelessWidget {
  const P1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                height: 299,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4Wp_jxySH5ALCUTu2aV7Kb_Is3X3DtidllweKtpADTqsUAkISJN3otqv1a6J9uWxTuWo&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.0),
                child: Text("The Kerala Police is the law enforcement agency for the Indian state of Kerala."),
              ),

          ],
        ),
      ),
    );
  }
}

class P2 extends StatelessWidget {
  const P2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 500,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                height: 299,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB5YDUxW3GsPCcrPIX_FcHC6caneuFjmMhb5b3ALEkOvaAXpQq_L3G2hSa8897wfRaJ7M&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(width: 1, color: Colors.white),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 24.0),
              child: Text("The Kerala Police is the law enforcement agency for the Indian state of Kerala")
            ),
          ],
        ),
      ),
    );

  }
}




