import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mountain/Cubits/AppCubit.dart';
import 'package:mountain/widgets/ResponsiveButton.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List images=[
    "img1.jpg",
        "img2.jpg",
        "img3.jpg",

  ];
  List texts=[
    "Mountain1",
    "Mountain2",
    "Mountain3",

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder:(_, index){
          return Container(
          width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(
                "assets/"+images[index],
              ),
              fit: BoxFit.cover
              )
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(texts[index], style: TextStyle(fontSize: 50,

                        color: Colors.black,
                      ),),
                      Text('Discover', style: TextStyle(fontSize: 30,
                      color: Colors.black54),),
                      SizedBox(height: 20,),
                      Container(
                          width: 250,
                          child: Text('Mountain hikes gives you an incredible sense of freedom along with endurance test.')),
                      SizedBox(height: 40,),
                      GestureDetector(
                        onTap: (){
                          BlocProvider.of<AppCubit>(context).getData();
                        },
                        child: Container(
                            width:120,
                            child: ResponsiveButton(width: 120,)),
                      )
                    ],
                  ),
                  Column(
                    children: List.generate(3, (indexDots) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index==indexDots?25:8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index==indexDots?Colors.blueGrey: Colors.blueGrey.withOpacity(0.3)
                        ),
                      );
                    })
                  )
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}


