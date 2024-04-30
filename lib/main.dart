import 'package:flutter/material.dart';
import 'Screen1.dart';
import 'Screen2.dart';
import 'Screen3.dart';


void main() async{
  fetchDataUsing();
  await fetchDataUsingAsyncAwait();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vertical Navigation App',
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
      },
    );
  }
}


final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);

void fetchDataUsing(){
  Future<String> messageFromFuture = futureMessage0();
  messageFromFuture.then((message){
    print(message);
  });
}
Future <void> fetchDataUsingAsyncAwait() async {
  print('Выборка данных.....');
  await Future.delayed(Duration(seconds: 2));
  print('Данные получены.....');
}

Future<String> futureMessage0() {
  return Future.delayed(Duration(seconds: 2), () => "Загрузка...");
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Домашняя страница', style: TextStyle( color: Colors.blue[900])),
        backgroundColor: Colors.blue[300],
      ),
      backgroundColor: Colors.blue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: raisedButtonStyle,
              child: Text('Маршрутизированная вертикальная навигация',style:TextStyle( color: Colors.blue[900]),),
              onPressed: () {
                Navigator.pushNamed(context, '/screen1');
              },
            ),
            ElevatedButton(
              style: raisedButtonStyle,
              child: Text('Страничная горизонтальная навигация',style:TextStyle( color: Colors.blue[900]),),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HorizontalScreen1()));
              },
            ),
          ],
        ),
      ),
    );
  }
}


class HorizontalScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('1 экран',style:TextStyle( color: Colors.blue[900])),
        backgroundColor: Colors.blue[300],
      ),
      body: Center(

        child: Column(
            children: <Widget>[
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HorizontalScreen2()));
                },
                child: Text('2 экран',style:TextStyle( color: Colors.blue[900]),),
              ),
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HorizontalScreen3()));
                },
                child: Text('3 экран',style:TextStyle( color: Colors.blue[900]),),
              ),
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Назад',style:TextStyle( color: Colors.blue[900]),),
              ),
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text('Домашняя страница',style:TextStyle( color: Colors.blue[900]),),
              ), ]
        ),
      ),
    );
  }
}

class HorizontalScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('2 экран',style:TextStyle( color: Colors.blue[900])),
        backgroundColor: Colors.blue[300],
      ),
      body: Center(
        child: Column(
            children: <Widget>[
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HorizontalScreen1()));
                },
                child: Text('1 экран',style:TextStyle( color: Colors.blue[900]),),
              ),
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HorizontalScreen3()));
                },
                child: Text('3 экран',style:TextStyle( color: Colors.blue[900]),),
              ),
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Назад',style:TextStyle( color: Colors.blue[900]),),
              ),
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text('Домашняя страница',style:TextStyle( color: Colors.blue[900]),),
              ), ]
        ),
      ),
    );
  }
}

class HorizontalScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('3 экран',style:TextStyle( color: Colors.blue[900])),
        backgroundColor: Colors.blue[300],
      ),
      body: Center(
        child: Column(
            children: <Widget>[
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HorizontalScreen1()));
                },
                child: Text('1 экран',style:TextStyle( color: Colors.blue[900]),),
              ),
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HorizontalScreen2()));
                },
                child: Text('2 экран',style:TextStyle( color: Colors.blue[900]),),
              ),
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Назад',style:TextStyle( color: Colors.blue[900]),),
              ),
              ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text('Домашняя страница',style:TextStyle( color: Colors.blue[900]),),
              ), ]
        ),
      ),
    );
  }
}
