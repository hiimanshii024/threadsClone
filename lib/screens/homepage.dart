import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(child: Text("Home",style: TextStyle(color: Colors.black),)),
      ),
      body: Container(
          color: Colors.white,
          child: ListView(
            children: [
              //_listSection(),
              _imagesection(),
              _threadsection()
            ],
          )),
    );
  }

  Widget _imagesection(){
    return Column(
      children: [
        ListTile(
          leading: ClipOval(
            child: Image.network("https://picsum.photos/100"),
          ),
          subtitle: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Start a thread ..',
              hintStyle: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
          trailing: Container(
            padding: EdgeInsets.symmetric(horizontal: 1.0),
            child: OutlinedButton(
              onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ProfileEditPage()));
              },
              child: const Text('Post'),
            ),
          ),
        ),
        Divider(color: Colors.grey,height: 10,),
      ],
    );
  }

  Widget _threadsection(){
    return Stack(
      //alignment: AlignmentDirectional.bottomEnd,
      children: [
        Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/100"),
              ),
              title: Row(
                children: [
                  Text(
                     'name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "time",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SizedBox(width: 10),
                  InkWell(
                      onTap: (){},
                      child: Icon(Icons.more_horiz))
                ],
              ),

              subtitle: Text(
                "description",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                right: 20,
                left: 70,
              ),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage("https://picsum.photos/200"),
                      fit: BoxFit.cover,
                    )),
              ),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Row(
                children: [
                  InkWell(
                      onTap: (){},
                      child: Icon(Icons.favorite_border)),

                  SizedBox(width: 10),

                  InkWell(
                      onTap: (){},
                      child: Icon(Icons.chat_bubble_outline)),

                  SizedBox(width: 10),

                  InkWell(
                      onTap: (){},
                      child: Icon(Icons.cached)),

                  SizedBox(width: 10),

                  InkWell(
                      onTap: (){},
                      child: Icon(Icons.send)),

                  //SizedBox(width: 10),
                ],
              ),
            ),
            //SizedBox(height: 10),
            Row(
              children: [
                Container(
                  //padding: EdgeInsets.only(bottom: 10),
                  alignment: Alignment.bottomLeft,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 90),
                    child: Text(
                      "replies",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),

                Container(
                  //padding: EdgeInsets.only(bottom: 10),
                  //alignment: Alignment.topLeft,
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30, left: 20),
                    child: Text(
                      "View Activity",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Positioned(
          left: 35,
          top: 63,
          child: Container(
            height: 400,
            width: 3,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(1),
            ),
          ),
        ),
        Positioned(
          right: 330,
          top: 330,
          // width: 100,
          //right: 330,
          child: Container(
            //padding: EdgeInsets.only(top: 350.0,left: 5.0),
            height: 35,
            width: 35,
            // decoration: BoxDecoration(
            //   color: Colors.grey.shade500,
            //   borderRadius: BorderRadius.circular(1),
            // ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://picsum.photos/400"), radius: 9,
                  ),
                ),
                //SizedBox(height: 20,),
                Positioned(
                  left: 0,
                  top: 10,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://picsum.photos/400"), radius: 7,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 8,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://picsum.photos/400"), radius: 6,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
