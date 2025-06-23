import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.home_sharp,color: Colors.black,),
        title: Text("Home",style: TextStyle(color: Colors.black),),
        actions: [InkWell(onTap: () {}, child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Icon(Icons.group,color: Colors.black,),
        )),
          InkWell(onTap: () {



          }, child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.logout,color: Colors.white,),
          ))
        ],
      ),
      body: _mainBody(),
      //backgroundColor: Colors.black

    );
  }

  Widget _mainBody(){
    return ListView(
      children: [
        _imageSection(),
        _actionBarSection(),
        //_actionSection(),
      ],
    );
  }

  Widget _imageSection(){
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white),
      child: const Padding(
        padding: EdgeInsets.only(left: 18.0, right: 18.0, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("Name",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,color: Colors.black),),
                    // SizedBox(
                    //   height: 2,
                    // ),
                    Text(
                      "How are you?",
                      style: TextStyle(
                          fontWeight: FontWeight.w800, fontSize: 16, color: Colors.black),
                    ),
                  ],
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundImage:
                  NetworkImage("https://picsum.photos/400"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _actionBarSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      child: OutlinedButton(
        style: ButtonStyle(shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15))))),
        onPressed: () {
          //Navigator.push(context, MaterialPageRoute(builder: (ctx)=>ProfileEditPage()));
        },
        child: const Text('Edit Profile', style: TextStyle(color: Colors.black),),
      ),
    );
  }
}
