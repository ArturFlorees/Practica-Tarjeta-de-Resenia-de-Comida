import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My first card')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //4 childs  in a row
            //  First column with the cake's information
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 35,
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Container(
                      decoration: BoxDecoration(
                        color:Color.fromARGB(255, 245, 99, 133),
                        borderRadius: BorderRadius.circular(10.0)
                      ),

                      child: const Center(
                        child: Text('Strawberry Pavlova', 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10), //Space between elements
                  // Fila 2
                  //Second box (With the cake's description)
                  SizedBox(
                    height: 125,
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Container(
                      color:Color.fromARGB(255, 246, 144, 187),
                      child: const Center(
                        child: Text('Pavlova is not exactly a cake, but rather a light and airy dessert featuring a meringue base. It boasts a unique textural experience, with a crisp exterior and a soft marshmallow-like center.')),
                    ),
                  ),
                  // Fila 3
                  const SizedBox(height: 10),
                  //Third  box (with the review's cake)
                  SizedBox(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Container(
                      color:Color.fromARGB(255, 246, 144, 187),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('* * * * *'),
                          Text('170 Reviews')
                        ],),
                    ),
                  ),
                  const SizedBox(height: 10),
                  //Fourth Box (with extra information)
                  // Fila 4
                  SizedBox(
                    height: 53,
                    width: MediaQuery.of(context).size.width * 0.30,
                    child: Container(
                      
                      color:Color.fromARGB(255, 246, 144, 187),
                      child: const Center(
                        child: Text('I could not finish :(')),
                    ),
                  ),
                  const SizedBox(height: 30)
                ],
              ),

            // Second column (with the cake's picture)
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      
                      width: 350,
                      height: 250,
                      child: Image.asset('assets/images/pavlova.jpg', fit: BoxFit.cover), 
                      
                      // Use appropriate color(s)
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}