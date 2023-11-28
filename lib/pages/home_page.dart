import 'package:flutter/material.dart';
import 'package:tsksession/widgets/custom_chat.dart';
import 'package:tsksession/widgets/custom_circularal_image.dart';
import 'package:tsksession/widgets/custom_status.dart';
import 'package:tsksession/Data/Users.dart';
class MassengerApp extends StatelessWidget {
  const MassengerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body:
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
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
              Expanded(
                child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {

                      return
                        // ListTile(
                          // leading: user_photos[index],
                          // title: user_names[index],
                          // subtitle: Text("text text text text text text text text"),
                        // );
                        CustomChat(
                          img: user_photos[index],
                          name: user_names[index],
                          chat: "text text text text text text text text"
                      );
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(
                          height: 15,
                        ),
                    itemCount:16),
              ), // Chats


            ],
          ),
        ),
      ),
    );
  }
}
