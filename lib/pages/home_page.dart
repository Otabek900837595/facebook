import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
         elevation: 0,
         backgroundColor: Colors.black,
         title: Text(
           "facebook",
           style: TextStyle(
             fontSize: 30,
             color: Colors.blue,
             fontWeight: FontWeight.bold,
           ),
         ),
         actions: [
           IconButton(
             onPressed: () {},
             icon: Icon(Icons.search,color: Colors.grey.shade800,),
           ),
           IconButton(
             onPressed: () {},
             icon: Icon(Icons.camera_alt,color: Colors.grey.shade800,),
           ),
         ],
       ),
      body: ListView(
        children: [
          Container(
            color: Colors.black,
            padding: EdgeInsets.only(top: 10,left: 10,right: 10),
            height: 120,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                    //  avatar
                      Container(
                        height: 45,
                        width: 45,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/user_5.jpeg"),
                            fit: BoxFit.cover,
                          )
                        ),
                      ),
                    SizedBox(width: 15,),
                    //  search
                      Expanded(
                        child: Container(
                          height: 45,
                          padding: EdgeInsets.symmetric(horizontal: 15,),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade500,
                            ),

                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "That's on your mind?",
                              hintStyle: TextStyle(color: Colors.grey.shade700),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.video_call,color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Live",style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        margin: EdgeInsets.symmetric(vertical: 14,),
                        color: Colors.grey.shade300,
                      ),

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.image,color: Colors.green,),
                            SizedBox(width: 5,),
                            Text("Photo",style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        margin: EdgeInsets.symmetric(vertical: 14,),
                        color: Colors.grey.shade300,
                      ),

                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on,color: Colors.red,),
                            SizedBox(width: 5,),
                            Text("Check in",style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      Container(
                        width: 1,
                        margin: EdgeInsets.symmetric(vertical: 14,),
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                ),
                // VerticalDivider(
                //   width: 1,
                //   thickness: 2,
                //   color: Colors.red,
                // )
              ],
            ),
          ),
          Container(
            height: 200,
            color: Colors.black,
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.only(top: 10,bottom: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 10,),
                makeStory(
                  storyImage: "assets/images/story_5.jpeg",
                  userImage: "assets/images/user_5.jpeg",
                  userName: "User Five",
                ),
                makeStory(
                  storyImage: "assets/images/story_2.jpeg",
                  userImage: "assets/images/user_2.jpeg",
                  userName: "User Five",
                ),
                makeStory(
                  storyImage: "assets/images/story_3.jpeg",
                  userImage: "assets/images/user_3.jpeg",
                  userName: "User Five",
                ),
                makeStory(
                  storyImage: "assets/images/story_1.jpeg",
                  userImage: "assets/images/user_1.jpeg",
                  userName: "User Five",
                ),
                makeStory(
                  storyImage: "assets/images/story_4.jpeg",
                  userImage: "assets/images/user_4.jpeg",
                  userName: "User Five",
                ),
                makeStory(
                  storyImage: "assets/images/story_5.jpeg",
                  userImage: "assets/images/user_5.jpeg",
                  userName: "User Five",
                ),

                makeStory(
                  storyImage: "assets/images/story_5.jpeg",
                  userImage: "assets/images/user_5.jpeg",
                  userName: "User Five",
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget makeStory({storyImage, userImage,userName}){
    return AspectRatio(
      aspectRatio: 1.3/2,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          ),

        ),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 2,color: Colors.blue,),
                  image: DecorationImage(
                    image: AssetImage(userImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(userName,style: TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }
}
