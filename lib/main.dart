
import 'package:flutter/material.dart';

import 'get_data.dart';
import 'mock1/result1.dart';
import 'mock2/result2.dart';
import 'model_mock.dart';

void main() async{
  // runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  GetJsonObject getJsonObject =  GetJsonObject(fileName: "assets/mockResponse2.json");
  ModelMock<Result2> mockGeneric = await getJsonObject.fromJsonFile();
  print(mockGeneric.result?.products?[0].name);

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Future<void> readJson() async {
    // var response1 = await rootBundle.loadString('assets/mockResponse1.json');
    // var data1 = await json.decode(response1);
    //
    // print(data1['result']);


    // myLongPrint(data1);
  }
  void myLongPrint(input) {
    String str = input.toString();

    // print out each chunk of 1000 characters sequentially
    while (str.length > 1000) {
      debugPrint(str.substring(0, 1000));

      // remove the first 1000 characters
      str = str.substring(1000);
    }

    // print the remaining characters
    debugPrint(str);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

