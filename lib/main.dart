import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//immutable state statelesswidget
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: CounterScreen(),
    );
  }
}
//Lifecycle of flutter include 1:-onCreate 2:-initState 3:-didChangeDependecies 4:-build(),5:setState,

//Mutable state statefulwidget
class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  //This will call when an object of stateful widget is called this act as entry point in stateful widget
  // method is used for initializing the state of a stateful widget

  // void initState() {
  //   super.initState();
  //   print('initState');
  // }
//i
  @override

// //  : This method is called immediately after initState and when dependency of the State object changes via InheritedWidget.
//   void didChangeDependencies() {
//     super.didChangeDependencies();
//     print('didChangeDependencies');
//   }

  @override
  //This method is called after the initilization of widget
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Counter:',
              style: TextStyle(fontSize: 29),
            ),
            Text(
              '$counter',
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: incrementCounter,
                  child: Text('Increment'),
                ),

                Visibility(
                  visible: counter > 0, // Only show  when counter is greater than 0
                  child: ElevatedButton(
                    onPressed: decreaseCounter,
                    child: Text('Decrement'),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: resetCounter,
                  child: Text('Reset'),
                ),
              ],
            ),
          ],

        ),
      ),

    );
  }

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }
//reset the counter
  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }
  //decrease the counter
void decreaseCounter(){
    setState(() {
      counter--;
      if(counter==0){
       resetCounter();
      }
    });
}
  // @override
  // //This method is called whenever any update is done in widget
  // void didUpdateWidget(covariant CounterScreen oldWidget) {
  //   super.didUpdateWidget(oldWidget);
  //   print('didUpdateWidget');
  // }
  //
  // // @override
  // //
//The framework calls this method when a previously active element is moved to the list of inactive elements.
  // // void deactivate() {
  // //   super.deactivate();
  // //   print('deactivate');
  // // }
  //
  // @override
//
  // void dispose() {
  //   super.dispose();
  //   print('dispose');
  // }
}
