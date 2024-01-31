
import 'package:crud_localdatabase/pages/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController>{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: controller.createNote,child: Icon(Icons.add),),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body:SafeArea(
        child:Obx(() => controller.isLoading.value
            ? Center(child: CircularProgressIndicator(),
      )
      :ListView.builder(
          shrinkWrap: true,
          itemCount: controller.notes.length,
            itemBuilder: (context,index){
        return ListTile(
          title:Text(controller.notes[index].title) ,
          subtitle:Text(controller.notes[index].content) ,
          trailing: PopupMenuButton(itemBuilder: (BuildContext context)=>[
            PopupMenuItem(child:Text("Edit"), onTap: () => controller.updateNote(index),),
            PopupMenuItem(child:Text("Delete") ,onTap:  ()=> controller.deleteNote(controller.notes[index].id!),)

          ],),
        );
      }),) ,
    ));

  }
}