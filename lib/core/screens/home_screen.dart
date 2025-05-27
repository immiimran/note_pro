import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:note_new/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.all(15),
        centerTitle: false,
        title: Text(
          "Make Your Notes",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => homeController.changeType(),
            icon: Icon(Icons.grid_view_rounded, color: Colors.white, size: 30),
          ),
        ],
      ),

      body: Obx(() {
        if (homeController.isGrid.value) {
          // Grid Section
          return GridView.builder(
            itemCount: 10,
            padding: EdgeInsets.symmetric(horizontal: 16),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (_, index) {
              return Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white.withOpacity(.1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Heading",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    Text(
                      "Macs do not have a built-in clipboard history feature; they only store the most recent item copied. To manage clipboard history, you can use third-party clipboard manager apps like ClipBook or Paste, which allow you to access and store multiple copied items.",

                      style: TextStyle(color: Colors.white.withOpacity(.5)),
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(
                          Icons.timer_sharp,
                          color: Colors.white.withOpacity(.5),
                        ),
                        Spacer(),
                        Text(
                          "09:30 PM",
                          style: TextStyle(color: Colors.white.withOpacity(.5)),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        } else {
          // ListView Section
          return ListView.separated(
            separatorBuilder: (_, index) => const SizedBox(height: 10),
            itemCount: 10,
            padding: EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (_, index) {
              return Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(.1)),
                child: ListTile(
                  title: Text(
                    "Heading",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        "Macs do not have a built-in clipboard history feature; they only store the most recent item copied. To manage clipboard history, you can use third-party clipboard manager apps like ClipBook or Paste, which allow you to access and store multiple copied items.",
                        style: TextStyle(color: Colors.white.withOpacity(.5)),
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.timer_sharp,
                            color: Colors.white.withOpacity(.5),
                          ),
                          Spacer(),
                          Text(
                            "09:30 PM",
                            style: TextStyle(
                              color: Colors.white.withOpacity(.5),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        }
      }),
    );
  }
}
