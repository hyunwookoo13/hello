import 'package:flutter/material.dart';

//stful을 치면 뜬다.
// Stateful이랑 less의 차이점 클릭하면 변화가 있어야 하니까 ful로 한것이다.
// main에서는 변하는 것이 없으니 less로 하는 것이다.
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.blueGrey,
        ),

        body: SingleChildScrollView( //밑으로 여러개가 있을 때 화면이 넘어갈때 스크롤로 넘어갈 수 있도록
          child: Container(
            color: Colors.white54,
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.red,
                      width: 150,
                      height: 150,
                      margin: const EdgeInsets.all(10),
                    ),
                    Container(
                      color: Colors.red,
                      width: 150,
                      height: 150,
                      margin: const EdgeInsets.all(10),
                    )
                  ],
                ),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.blue,
                      width: 150,
                      height: 150,
                      margin: const EdgeInsets.all(10),
                    ),
                    Container(
                      color: Colors.blue,
                      width: 150,
                      height: 150,
                      margin: const EdgeInsets.all(10),
                    ),
                  ],
                ),
                TextButton(onPressed: (){
                    showDialog(context: context, builder:( BuildContext bctx){
                        return AlertDialog(
                          content: Text("게시글 등록을 원하시나요?"),
                          actions: [
                            ElevatedButton(onPressed: ()
                              {
                              Navigator.of(context).pop();
                              },
                              child: Text("네"),
                            ),

                            ElevatedButton(onPressed: ()
                              {
                              Navigator.of(context).pop();
                              },
                              child: Text("아니오"),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text("Text Button"),
                ),
                OutlinedButton(onPressed: (){
                  final snackBar = SnackBar(
                    content: const Text("vay! A Snackbar"),
                    action: SnackBarAction(
                      label: 'undo',
                      onPressed: (){},
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }, child: Text("Outlined Button")),

                SizedBox(
                  width: 100,
                  height: 40,
                ),

                ElevatedButton.icon(
                    onPressed: (){},
                    icon: Icon(Icons.ac_unit, size:20),
                    label: Text("Elevated Button"),
                ),

                Row(
                  children: [
                    Padding(padding: const EdgeInsets.all(10),
                    child: Image.asset('asset/image/bear.jpeg',
                      width:200,
                      height: 150,
                      )
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "menu"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        ],
      ),
    );
  }
}
//git init 초기화
//
