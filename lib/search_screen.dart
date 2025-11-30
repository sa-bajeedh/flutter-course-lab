import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  List <String> _result=[];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        
        children: [
          SizedBox(height: 20,),
          SizedBox(
              height: 65,
              width: 200,
              child: ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                     _result.add("Saeed Mahfouz ");
                  });
                 
                },
                label: Text(
                  "زيادة القائمة",
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                icon: Icon(Icons.print, color: Colors.black),
              ),
            ),

             SizedBox(height: 20,),
          Expanded(
            child: ListView.separated(
              itemCount: _result.length,
              separatorBuilder: (context, index) => Divider(height:10,endIndent: 5,indent: 5,color: Colors.black,),
              itemBuilder: (context, index) => ListTile(
                title: Text(_result[index]),
                trailing: IconButton(icon:Icon(Icons.delete) ,onPressed: () => setState(() {
                  _result.removeAt(index);
                })),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: BorderSide(color: Colors.black)
                ),
              ),),
          ),
        ],
      ),
    );
    
  }
}