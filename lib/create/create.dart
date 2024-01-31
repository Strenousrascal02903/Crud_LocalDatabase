
import 'package:crud_localdatabase/create/controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class CreatePage extends GetView<CreateController>{
  const CreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              // Padding(padding: EdgeInsets.all(8)),
              TextField(
                controller: controller.titleController,
                decoration: InputDecoration(
                  labelText: "Title",border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                controller: controller.contentController ,
                decoration: InputDecoration(
                    labelText: "Description",border: OutlineInputBorder()
                ),
              ),
              Spacer(),
              ElevatedButton(onPressed: controller.onSubmit, child: Text("SUBMIT"))
            ],
          ),
        ),
      ),
    );
  }
}

