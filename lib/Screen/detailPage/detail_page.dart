import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mountain/Cubits/AppState.dart';
import 'package:mountain/widgets/ResponsiveButton.dart';
import 'package:mountain/widgets/button.dart';
import '../../Cubits/AppCubit.dart';
class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int start = 4;
  int SelectIndex = -1;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
  builder: (context, state) {
    DetailState Detail= state as DetailState;
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  height: 400,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage('http://mark.bslmeiyu.com/uploads/'+ Detail.place.img),
                    fit: BoxFit.cover,
                  )),
                )),
            Positioned(
              left: 20,
              top: 70,
              child: (Row(
                children: [
                  IconButton(
                    onPressed: () {
                      BlocProvider.of<AppCubit>(context).goHome();
                    },
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                  ),
                ],
              )),
            ),
            Positioned(
                top: 70,
                right: 20,
                child: (Row(
                  children: [
                    Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ),
                  ],
                ))),
            Positioned(
                top: 350,
                child: (Container(
                  padding: EdgeInsets.only(top: 30, left: 30, right: 30),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            Detail.place.name,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            '₹'+Detail.place.price.toString(),
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.blueGrey,
                          ),
                          Text(
                           Detail.place.location,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blueGrey,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(Icons.star,
                                  color: Detail.place.stars > index
                                      ? Colors.yellow
                                      : Colors.black38);
                            }),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '(5.0)',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black26,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'People',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.8),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Number of people in your group',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black26,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                SelectIndex = index;
                              });
                            },
                            child: Container(
                              child: Button(
                                size: 50,
                                color: SelectIndex == index
                                    ? Colors.black
                                    : Colors.white,
                                backgroundColor: SelectIndex == index
                                    ? Colors.white
                                    : Colors.black12.withOpacity(0.5),
                                borderColor: Colors.black12.withOpacity(0.2),
                                text: (index + 1).toString(),
                              ),
                            ),
                          );
                        }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Discription',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        Detail.place.description,
                        style: TextStyle(fontSize: 15, color: Colors.black26),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ))),
            Positioned(
                bottom: 0,
                left: 20,
                right: 10,
                child: Row(
                  children: [
                    Button(
                      size: 60,
                      color: Colors.white,
                      backgroundColor: Colors.black12.withOpacity(0.5),
                      borderColor: Colors.black12.withOpacity(0.2),
                      isIcon: true,
                      icon: Icons.favorite_border,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ResponsiveButton(
                      isResponsive: true,
                      width: 280,
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  },
);
  }
}
