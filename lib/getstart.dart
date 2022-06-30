import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task1algoriza/login.dart';
import 'package:task1algoriza/register.dart';

class GetStart extends StatefulWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  _GetStartState createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  final List<int> PageNum = [0, 1, 2];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints.tightFor(width: 70, height: 5),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.pinkAccent[700],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Login()),
                  );
                },
                child: Text('skip'),
                //  style: ButtonStyle(backgroundColor: RenderErrorBox.backgroundColor.green),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //    crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(width:150,height:100,child: Image(image: AssetImage('images/GirlPower.png'))),
              Image(image: AssetImage('images/selfy.png')),
              Text(
                'Get food delivery to your doorstep asap',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'we have young and professional delivery team that will bring your food as soon as possible to your doorstep',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              SmoothPageIndicator(
                  controller: controller,
                  count: PageNum.length,
                  effect: ScrollingDotsEffect(
                    activeStrokeWidth: 2.6,
                    activeDotScale: 1.3,
                    maxVisibleDots: 5,
                    radius: 8,
                    spacing: 10,
                    dotHeight: 8,
                    dotWidth: 20,
                    activeDotColor: Colors.deepOrangeAccent,
                  )),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: Container(
                      width: double.infinity,
                      height: 60,
                      child: Center(child: Text('Get Started')))),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?'),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()),
                        );
                      },
                      child: Text(' Sign Up'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
