import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

static final List<Widget> _screens =[
  Home(),
  MyTask(),
  Comment(),
  Profile(),

];
  void _onItemTapped (int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text('GizeMis',),
          centerTitle: true,
          leading: BackButton(),

      ),
        body: _screens[_selectedIndex] ,
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround ,
            children: [
              buildNavBarItem(CupertinoIcons.home, 'Home',0,),
              buildNavBarItem(CupertinoIcons.list_bullet, 'MyTask',1),
             const SizedBox(width: 20,),
              buildNavBarItem(CupertinoIcons.conversation_bubble, 'Comment',2),
              buildNavBarItem(CupertinoIcons.profile_circled, 'Profile',3),
            ],
          ),),

        floatingActionButton: ClipOval(
          child: Material(
            color: Color(0xFF7861FF),
              elevation: 10,
              child:InkWell(
                child: SizedBox(
                  width:56 ,
                  height:56 ,
                  child: Icon(
                      CupertinoIcons.add_circled,
                    size: 28,
                    color: Colors.white,
                  ),
                ) ,)),
              ),
        floatingActionButtonLocation:FloatingActionButtonLocation.centerDocked,));


  }

  Widget buildNavBarItem(IconData icon,String label, int index){
    return InkWell(
      onTap: () => _onItemTapped(index) ,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: _selectedIndex == index ? Color(0xFF7861FF) : Colors.black87,
          ),
          Text(label,style: TextStyle(
            color: _selectedIndex == index ? Color(0xFF7861FF): Colors.black87
          ) ,),
        ],
      ),
    );
  }
}
//Home
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[400],
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Merhaba, Hoşgeldiniz!
              Column(
                children: [
                  Text('Merhaba, Hoşgeldiniz!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),

                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text('24 Eylül 2024',
                  style: TextStyle(color: Colors.black87,
                  fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),

                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(10),
                child: Icon(Icons.notifications,
                color: Colors.black87,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //Arama Butonu
              Container(
                decoration: BoxDecoration(color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(Icons.search,
                      color: Colors.black54,
                    ),
                    Text('Arama',
                    style: TextStyle(color: Colors.black54,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),

                    ),

                  ],),
              ),
        SizedBox(
          height: 25,
        ),
        //Baraj doluluk oranları
        Container(
            decoration: BoxDecoration(color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(CupertinoIcons.drop),
                Text('İstanbul Barajı Doluluk Oranı : % 40,70',
                  style: TextStyle(color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                ),
                )],
            ),
          ),
              SizedBox(
                height: 8,
              ),
              //Baraj doluluk oranları
              Container(
                decoration: BoxDecoration(color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.drop),
                    Text('Ankara Barajı Doluluk Oranı : % 36,64',
                      style: TextStyle(color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              //Baraj doluluk oranları
              Container(
                decoration: BoxDecoration(color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.drop),
                    Text('Adana Barajı Doluluk Oranı : % 65,05',
                      style: TextStyle(color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              //Baraj doluluk oranları
              Container(
                decoration: BoxDecoration(color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.drop),
                    Text('İzmir Barajı Doluluk Oranı : % 41,32',
                      style: TextStyle(color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              //Baraj doluluk oranları
              Container(
                decoration: BoxDecoration(color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.drop),
                    Text('Konya Barajı Doluluk Oranı : % 24,50',
                      style: TextStyle(color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )],
                ),
              ),


            ],
          ),


          )),


    );
  }
}
//Home Bitiş

//MyTask başlangıç
class MyTask extends StatefulWidget {
  const MyTask({super.key});

  @override
  State<MyTask> createState() => _MyTaskState();
}

class _MyTaskState extends State<MyTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.drop_fill),
                    Text('Su Tasarrufu İçin Görevlerimiz',
                      style: TextStyle(color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.drop),
                    Text('Fotoselli Musluklar ve Tasarruflu Duş Başlıkları Kullanın.',
                      style: TextStyle(color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.drop),
                    Text('Sızıntıları Hemen Onarın.',
                      style: TextStyle(color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.drop),
                    Text('Çamaşır ve Bulaşık Makinesini Tam Yükte Kullanın.',
                      style: TextStyle(color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.drop),
                    Text('Daha Kısa Duş Alın.',
                      style: TextStyle(color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.drop),
                    Text('Yağmur Suyunu Toplayın ve Kullanın.',
                      style: TextStyle(color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                  padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.drop),
                    Text('Diş Fırçalarken ve Bulaşık Yıkarken Suyu Kapatın.',
                      style: TextStyle(color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Icon(CupertinoIcons.drop),
                    Text('Bahçenizde Akıllı Sulama Sistemi Kullanın.',
                      style: TextStyle(color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//MyTask bitis

//Comment BAşlangıç
class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: Padding(
        padding: const EdgeInsets.all(8.0),
    child: Column(
    children: [
    Container(
    decoration: BoxDecoration(color: Colors.purpleAccent,
    borderRadius: BorderRadius.circular(25),
      boxShadow: [BoxShadow(
        offset: Offset(0, 5),
        color: Colors.black,
        spreadRadius: 2,
        blurRadius: 18,


    )]),
    padding: EdgeInsets.all(15),
    child: Row(
    children: [
    Icon(Icons.add_chart),
    Text('Görüşlerinizi Belirtiniz.',
    style: TextStyle(color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    ),
    )],
    ),
    ),
    SizedBox(
    height: 300,
    ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.black,
            borderRadius: BorderRadius.circular(5),
              boxShadow: [BoxShadow(
                offset: Offset(0, 5),
                color: Colors.black,
                spreadRadius: 2,
                blurRadius: 18,


              )]),
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Text('Yorum Yazınız.',
                style: TextStyle(color: Colors.purpleAccent,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )],
          ),
        ),
      ),
      SizedBox(
        height: 1,
      ),

      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 100,
            decoration: BoxDecoration(color: Colors.purpleAccent,
            borderRadius: BorderRadius.circular(10),
                boxShadow: [BoxShadow(
                  offset: Offset(0, 5),
                  color: Colors.black,
                  spreadRadius: 2,
                  blurRadius: 18,


                )]),
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Icon(CupertinoIcons.location),
                Text('Gönder',
                  style: TextStyle(color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),

                ),
              ],
            ),
          ),
      ),


    ]),
    )
    )
    );

  }
}
//Comment Bitiş

//Profile Başlangıç
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    color: Colors.purpleAccent ,
                      spreadRadius: 2,
                      blurRadius: 18,
                  )
                ]
              ),
              child: ListTile(
                title: const Text('Ad, Soyad'),
                subtitle: const Text('Gizem Ak'),
                leading: Icon(CupertinoIcons.person_alt_circle) ,
                trailing: Icon(Icons.arrow_forward, color: Colors.black,),
                tileColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      color: Colors.purpleAccent ,
                      spreadRadius: 2,
                      blurRadius: 18,
                    )
                  ]
              ),
              child: ListTile(
                title: const Text('Email'),
                subtitle: const Text('abcd@gmail.com'),
                leading: Icon(CupertinoIcons.location) ,
                trailing: Icon(Icons.arrow_forward, color: Colors.black,),
                tileColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,5),
                      color: Colors.purpleAccent ,
                      spreadRadius: 2,
                      blurRadius: 18,
                    )
                  ]
              ),
              child: ListTile(
                title: const Text('Ayarlar'),
                leading: Icon(CupertinoIcons.settings) ,
                trailing: Icon(Icons.arrow_forward, color: Colors.black,),
                tileColor: Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0,5),
                      color: Colors.purpleAccent ,
                      spreadRadius: 2,
                      blurRadius: 18,
                    )
                  ]
              ),
              child: ListTile(
                title: const Text('Bildirimler'),
                leading: Icon(CupertinoIcons.bell) ,
                trailing: Icon(Icons.arrow_forward, color: Colors.black,),
                tileColor: Colors.black,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
           SizedBox(
             width: double.infinity,
             child: ElevatedButton(
                 onPressed:() {},
               style: ElevatedButton.styleFrom(
                 padding: const EdgeInsets.all(15),
               ),
               child: const Text('Profili Düzenle'),

             ),
           ),


          ],

        ),
      ),
      
    );
  }
}
//Profile Bitiş
