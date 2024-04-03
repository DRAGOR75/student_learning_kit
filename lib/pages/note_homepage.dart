import 'package:flutter/material.dart';
import 'package:get/get.dart';
class NotesHomePage extends StatefulWidget {
  const NotesHomePage({super.key});

  @override
  State<NotesHomePage> createState() => _NotesHomePageState();
}

class _NotesHomePageState extends State<NotesHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Notes", style:TextStyle(
                fontSize: 30,color: Colors.white,
              ),),
              IconButton(onPressed: (){}, icon: Container(
                  width:40,
                  height:49,
                  decoration: BoxDecoration(color: Colors.grey.shade900.withOpacity(.8),
                  borderRadius: BorderRadius.circular(10)),


                 child: const Icon(Icons.sort,color:Colors.white))),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextField(
              style: const TextStyle(fontSize:16,color: Colors.grey),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 12),
                hintText: "Search Notes.....",
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: const Icon(Icons.search,
                color: Colors.grey,),
                fillColor: Colors.grey.shade800,
                filled: true,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular((30)),
                  borderSide: const BorderSide(color: Colors.transparent)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular((30)),
                    borderSide: const BorderSide(color: Colors.transparent)
                )
              ),
            ),

          ),
          Expanded(child:ListView(
            children: [
              Card(

                child: ListTile(
                  title: RichText(
                    text: TextSpan(
                      text: 'Note 1 :\n',
                      style:TextStyle(
                        fontSize: 18,
                          color: Colors.white,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text:"Hello",
                          style:TextStyle(
                          fontSize: 14,
                           color: Colors.white,
                           fontWeight: FontWeight.normal,
                           height: 1.5,
                        ),
                        )
                      ],
                    ),
                  ),
                  subtitle: Text('Edited: 21/2/24',style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.grey.shade900
                  ),
                  ),
                ),
              )
            ],
          ))


        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.grey,
      child: Icon(Icons.add,
      size: 30,),),
    );
  }
}
