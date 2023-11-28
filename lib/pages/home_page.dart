import 'package:flutter/material.dart';
import 'package:tsksession/widgets/custom_chat.dart';
import 'package:tsksession/widgets/custom_circularal_image.dart';
import 'package:tsksession/widgets/custom_status.dart';
import 'package:tsksession/Data/Users.dart';

class MassengerApp extends StatefulWidget {
  const MassengerApp({super.key});

  @override
  State<MassengerApp> createState() => _MassengerAppState();
}

class _MassengerAppState extends State<MassengerApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.message),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (idx) {
          currentIndex = idx;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Groups",
            icon: Icon(Icons.group),
          ),
          BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings),
          )
        ],
      ),
      appBar: AppBar(
        leading: Center(
            child: CustomCircularalImage(
          img: "assets/images/male_avatar.png",
        )),
        title: Text("Chats"),
        actions: [
          Icon(Icons.camera_alt),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(Icons.type_specimen),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                // style: ,
                decoration: InputDecoration(
                  hintText: "Search",
                  hintStyle: TextStyle(fontSize: 16),
                  contentPadding: EdgeInsets.symmetric(vertical: -10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  prefixIcon:Icon(Icons.search,size: 20,),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0,top: 8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CustomStatus(
                          img: Icon(
                            Icons.add,
                          ),
                          name: "Add Story"),
                      CustomStatus(
                          img: CustomCircularalImage(
                            img: "assets/images/img1.jpg",
                          ),
                          name: "Mahmoud"),
                      CustomStatus(
                          img: CustomCircularalImage(
                            img: "assets/images/img1.jpg",
                          ),
                          name: "Mahmoud"),
                      CustomStatus(
                          img: CustomCircularalImage(
                            img: "assets/images/img1.jpg",
                          ),
                          name: "Mahmoud"),
                      CustomStatus(
                          img: CustomCircularalImage(
                            img: "assets/images/img1.jpg",
                          ),
                          name: "Mahmoud"),
                      CustomStatus(
                          img: CustomCircularalImage(
                            img: "assets/images/img1.jpg",
                          ),
                          name: "Mahmoud"),
                      CustomStatus(
                          img: CustomCircularalImage(
                            img: "assets/images/img1.jpg",
                          ),
                          name: "Mahmoud"),
                    ],
                  ),
                ),
              ), //Status
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return CustomChat(
                        img: user_photos[index],
                        name: user_names[index],
                        chat: "text text text text text text text text");
                  },
                  separatorBuilder: (context, index) => SizedBox(
                        height: 15,
                      ),
                  itemCount: 16), // Chats
            ],
          ),
        ),
      ),
    );
  }
}
