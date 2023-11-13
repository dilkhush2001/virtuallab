import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController controller=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: Image.asset('assets/img.png', height: 60,width: 60,),
        centerTitle: true,
        title: Text('Virtual Engineering Lab', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.menu))],
      ),
      body: ListView(
          children: [
            Container(height: 400,
            width: double.infinity,
              child: PageView.builder(
                controller: controller,
                  onPageChanged: (int index) {
                    final roundedIndex = index.toDouble().round();
                    controller.animateToPage(
                      roundedIndex,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                itemCount: 9,
                  itemBuilder: (context, idx){
                return Container(
                  height: 400,
                  width: 200,
                  color: Colors.yellowAccent,
                  child: Image.asset('assets/logo.png'),
                );
              }
              ),
            ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                height: 300,
                width: double.infinity,
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Center(child: Text('Disciplines and Domains', style: TextStyle(fontWeight:FontWeight.bold, fontSize: 50),)),
                ),
              ),
            GestureDetector(
              onTap: (){},
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                elevation: 15,
                shadowColor: Colors.black,
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.cyanAccent,Colors.blueAccent
                      ]
                    )
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home_work_outlined, size: 60,),
                      Text("Civil Engineering", style: TextStyle(fontSize: 30),)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),
            GestureDetector(
              onTap: (){},
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                elevation: 15,
                shadowColor: Colors.black,
                child: Container(
                  alignment: Alignment.center,
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            Colors.cyanAccent,Colors.blueAccent
                          ]
                      )
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.cell_tower_sharp, size: 60,),
                      Text("Electronics & Communication", style: TextStyle(fontSize: 30),)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),
            GestureDetector(
              onTap: (){},
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                elevation: 15,
                shadowColor: Colors.black,
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.cyanAccent,Colors.blueAccent
                          ]
                      )
                  ),child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.engineering, size: 60,),
                    Text("Mechanical Engineering", style: TextStyle(fontSize: 30),)
                  ],
                ),
                ),
              ),
            ),
            SizedBox(height: 12,),
            GestureDetector(
              onTap: (){},
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                elevation: 15,
                shadowColor: Colors.black,
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft,
                          colors: [
                            Colors.cyanAccent,Colors.blueAccent
                          ]
                      )
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.electrical_services_outlined, size: 60,),
                      Text("Electronics and Communication", style: TextStyle(fontSize: 30),)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),
            GestureDetector(
              onTap: (){},
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                elevation: 15,
                shadowColor: Colors.black,
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.cyanAccent,Colors.blueAccent
                          ]
                      )
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.computer_rounded, size: 60,),
                      Text("Computer Science and Engineering", style: TextStyle(fontSize: 30),)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),
            GestureDetector(
              onTap: (){},
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                elevation: 15,
                shadowColor: Colors.black,
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.cyanAccent,Colors.blueAccent
                          ]
                      )
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.computer, size: 60,),
                      Text("Information Technology", style: TextStyle(fontSize: 30),)
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 12,),
            GestureDetector(
              onTap: (){},
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                elevation: 15,
                shadowColor: Colors.black,
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.cyanAccent,Colors.blueAccent
                          ]
                      )
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.settings_suggest_outlined, size: 60,),
                      Text("Mining Engineering", style: TextStyle(fontSize: 30),)
                    ],
                  ),

                ),
              ),
            ),
            SizedBox(height: 12,),

            GestureDetector(
              onTap: (){},
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                elevation: 15,
                shadowColor: Colors.black,
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.cyanAccent,Colors.blueAccent
                          ]
                      )
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.pets, size: 60,),
                      Text("Petroleum Technology", style: TextStyle(fontSize: 30),)
                    ],
                  ),

                ),
              ),
            ),
            SizedBox(height: 12,),

            GestureDetector(
              onTap: (){},
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                elevation: 15,
                shadowColor: Colors.black,
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.cyanAccent,Colors.blueAccent
                          ]
                      )
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.forest_rounded, size: 60,),
                      Text("Agricultural Engineering", style: TextStyle(fontSize: 30),)
                    ],
                  ),

                ),
              ),
            ),
            SizedBox(height: 12,),

            GestureDetector(
              onTap: (){},
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                elevation: 15,
                shadowColor: Colors.black,
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.cyanAccent,Colors.blueAccent
                          ]
                      )
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.report_problem_outlined, size: 60,),
                      Text("Artificial Intelligence and Machine Learning", style: TextStyle(fontSize: 30),)
                    ],
                  ),

                ),
              ),
            ),
            SizedBox(height: 12,),
            GestureDetector(
              onTap: (){},
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 12,horizontal: 12),
                elevation: 15,
                shadowColor: Colors.black,
                child: Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.cyanAccent,Colors.blueAccent
                          ]
                      )
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.data_exploration, size: 60,),
                      Text("Data Science", style: TextStyle(fontSize: 30),)
                    ],
                  ),

                ),
              ),
            ),
            SizedBox(height: 12,),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text('About Us', style: TextStyle(fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                ),
                child: Column(
                  children: [
                    CupertinoButton(
                        color: Colors.blue[900],
                        child: const Text('Virtual Labs'), onPressed: (){}),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text('Virtual Labs will provide to the students the result of an experiment by one of the following methods (or possibly a combination). Modeling the physical phenomenon by '
                          'a set of equations and carrying out simulations to yield the result of the particular experiment.', style: TextStyle(fontSize: 16),),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent,
                ),
                child: Column(
                  children: [
                    CupertinoButton(
                        color: Colors.blue[900],
                        child: const Text('Objectives'), onPressed: (){}),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text('To provide remote-access to Labs in various disciplines of Science '
                          'and Engineering. These Virtual Labs would cater to students at the undergraduate level, post graduate level as well as to research scholars', style: TextStyle(fontSize: 16),),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    CupertinoButton(
                        color: Colors.blue[900],
                        child: const Text('The Philosophy'), onPressed: (){}),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text('Physical distances and the lack of resources make us unable to perform experiments, especially when they involve sophisticated instruments. Also, good teachers are always a scarce resource. Web-based and video-based courses'
                          ' address the issue of teaching to some extent.', style: TextStyle(fontSize: 16),),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
                child: Text("CONTACT US", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blueAccent)
                ),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:  Column(
                      children: [
                        Text('Name'),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                            hintText:"Enter name",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:  Column(
                      children: [
                        Text('Email*'),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                            hintText:"Enter Email",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:  Column(
                      children: [
                        Text('Number*'),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                            hintText:"Enter number",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:  Column(
                      children: [
                        Text('Name of Your Branch*'),
                        TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                            hintText:"Enter Branch",
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:  Column(
                      children: [
                        Text('Your Quary'),
                        TextFormField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                              hintText:"Quary",
                              border: OutlineInputBorder(),
                              helperMaxLines: 4
                          ),
                        ),
                      ],
                    ),
                  ),
                ],),
              ),
            ),
            Image.asset('assets/logo.png'),
            SizedBox(height: 12,),

          ],
      ),
    );
  }
}
