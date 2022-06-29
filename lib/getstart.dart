import 'package:flutter/material.dart';
import 'package:task1algoriza/login.dart';
import 'package:task1algoriza/register.dart';

class GetStart extends StatefulWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  _GetStartState createState() => _GetStartState();
}

class _GetStartState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        actions: [
          ElevatedButton(

            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login()),
              );
            },
            child: Text('skip'),
            //  style: ButtonStyle(backgroundColor: RenderErrorBox.backgroundColor.green),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //    crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            '7Krave',
          ),
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
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            height: 20,
            width: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (context, index) => Row(
                children: [
                  Container(


                    color: Colors.grey,
                    width: 50,
                    height: 5,
                  ),
                  Container(
                    // decoration: BoxDecoration(
                    //   borderRadius: BorderRadius.all(Radius.circular(20)),
                    // ),

                    width: 20,
                    height: 20,
                  ),
                ],
              ),
              itemCount: 3,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: ElevatedButton(
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
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Text('Don\'t have an account?'),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Register()),
                    );
                  },
                  child: Text(' Sign Up'))
            ],
          )
        ],
      ),
    );
  }
}
