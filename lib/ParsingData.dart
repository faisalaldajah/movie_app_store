import 'package:flutter/material.dart';
import 'package:movie_app_store/Network.dart';

class ParsingData extends StatefulWidget {
  @override
  _ParsingDataState createState() => _ParsingDataState();
}

class _ParsingDataState extends State<ParsingData> {
  Future data;

  @override
  void initState() {
    super.initState();
    data = getData();
  }

  Future getData() async {
    var data;
    String url = "https://gist.github.com/faisalaldajah/fc30e564d68bd9f9468d5a91936a7628.js";
    Network network = Network(url);
    data = network.fetchData();

    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: FutureBuilder(
        future: getData(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return createListView(snapshot.data, context);
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }

  Widget createListView(List data, BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  title: Text('${data[index]["Title"]}'),
                  leading: CircleAvatar(
                    child: Text(data[index]['Year'].toString()),
                  ),
                  subtitle: Text(data[index]['Released']),
                ),
                Divider(height: 8, color: Colors.black),
              ],
            );
          }),
    );
  }
}
