import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<String> photoOfCountries = [
    "https://images.unsplash.com/photo-1577624060070-ca1afe89ddad?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmFuZ2xhZGVzaHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1524492412937-b28074a5d7da?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW5kaWF8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1463725876303-ff840e2aa8d5?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YXVzdHJpYXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1561629625-edea42c6da34?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dWtyYWluZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1485738422979-f5c462d49f74?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNhfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1544085311-11a028465b03?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bm9yd2F5fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"
  ];
  List<String> nameOfCountries = [
    "Bangladesh",
    "India",
    "Austria",
    "Ukraine",
    "USA",
    "Norway"
  ];
  var icon = Icon(Icons.favorite_border, color: Colors.black);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        title: Text("Vlog App"),
        elevation: 20,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: nameOfCountries.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: InkWell(
                      onTap: () {},
                      child: Card(
                          child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.network(
                                photoOfCountries[index],
                                width: MediaQuery.of(context).size.width,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            icon = Icon(Icons.favorite_border,
                                                color: Colors.red);
                                          },
                                          icon: icon),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        nameOfCountries[index],
                                        style: TextStyle(fontSize: 30),
                                      )
                                    ]),
                              ),
                            ],
                          )
                        ],
                      )),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
