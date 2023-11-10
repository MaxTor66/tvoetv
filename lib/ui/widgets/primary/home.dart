import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../domain/blocs/stage_bloc.dart';
import '../../../domain/blocs/stage_events.dart';
import '../../../domain/blocs/stage_states.dart';
import '../../../domain/blocs/lenta_bloc.dart';
import '../../../domain/blocs/lenta_events.dart';
import '../../../domain/blocs/lenta_states.dart';
import '../../../domain/blocs/top_bloc.dart';
import '../../../domain/blocs/top_events.dart';
import '../../../domain/blocs/top_states.dart';
import '../../../domain/data_provider/home_data_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final StageBloc homeBloc;
  late final LentaBloc lentaBloc;
  late final TopBloc topBloc;
  @override
  void initState() {
    homeBloc =StageBloc(GetIt.I<DataProvider>());
    homeBloc.add(OnLoadStageEvent());
    lentaBloc =LentaBloc(GetIt.I<DataProvider>());
    lentaBloc.add(OnLoadLentaEvent());
    topBloc =TopBloc(GetIt.I<DataProvider>());
    topBloc.add(OnLoadTopEvent());
  }
  PageController controller=PageController();
  @override
  Widget build(BuildContext context) {

    return  Scaffold(

      backgroundColor: Colors.black,
      body:
      SafeArea(
        child: ListView(
          physics: const ClampingScrollPhysics(),
          children:  [

            Container(
              height: 90,
              alignment: Alignment.topLeft,
              child: const Row(
                children: [
                  Padding(

                    padding: EdgeInsets.only(top:20, left:32),
                    child: SizedBox(
                        height: 25,
                        width: 72,
                        child:
                        Image(
                            height: 25,
                            width: 72,
                            fit: BoxFit.cover,
                            image: AssetImage('images/logo/logo_tvoe.png')

                        )),
                  ),

                ],

              ),
            ),

            Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Container(
                     alignment: Alignment.topCenter,
                     width: 85,
                     height: 370,

                     child:
                     Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Color(0xFFBABABA),size: 28,)),
                         IconButton(onPressed: (){}, icon: const Icon(Icons.home_outlined, color: Color(0xFFBABABA),size: 28,)),
                         IconButton(onPressed: (){}, icon: const Icon(Icons.movie_creation_outlined, color: Color(0xFFBABABA),size: 28,)),
                         IconButton(onPressed: (){}, icon: const Icon(Icons.tv_outlined, color: Color(0xFFBABABA),size: 28,)),
                         IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline, color: Color(0xFFBABABA),size: 28,)),
                         IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle_outlined, color: Color(0xFFBABABA),size: 28,)),
                         const SizedBox(height: 30,),
                         IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_upward_outlined, color: Color(0xFFBABABA),size: 28,)),

                       ],
                     )
                   ),

                   Expanded(
                     child: BlocBuilder<StageBloc, StageState>(
                     bloc:homeBloc,
                     builder: (BuildContext context, state) {
                       if (state is StageLoadedSuccessState) {
                         return
                           Container(
                              padding: const EdgeInsets.only(left: 10),
                               height: 448,


                               child: Stack(
                                 children: [
                                   Column(
                                     children: [
                                   SizedBox(
                                     width:203,
                                     height: 114,
                                     child: CachedNetworkImage(
                                     imageUrl: state.filmInStage.titleImg,
                                         fit: BoxFit.contain
                                     ),
                                   ),
                                       Container(
                                         margin: const EdgeInsets.only(top:18),
                                         alignment: Alignment.center,
                                         width:338,
                                         height: 114,
                                         child: Text(state.filmInStage.description, textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 19),)
                                       ),
                                       Container(
                                         width:338,
                                         margin: const EdgeInsets.only(top:18),
                                         child: Row(

                                           mainAxisAlignment: MainAxisAlignment.center,
                                           children: [
                                             Container(
                                               width:153,
                                               height: 50,
                                              alignment: Alignment.center,

                                               decoration: const BoxDecoration(
                                                   gradient: LinearGradient(

                                                     begin: Alignment.centerLeft,
                                                     end: Alignment.centerRight,
                                                     colors: [

                                                       Color.fromARGB(
                                                           255, 106, 17, 203),

                                                       Color.fromARGB(
                                                           255, 37, 117, 252),
                                                     ],
                                                   ),
                                                   borderRadius: BorderRadius.all(Radius.circular(10))
                                               ),
                                               child:
                                               ElevatedButton(

                                                 style: ElevatedButton.styleFrom(
                                                   fixedSize: Size(153, 50),
                                                   foregroundColor: Colors.transparent,
                                                   backgroundColor: Colors.transparent,
                                                 surfaceTintColor: Colors.transparent,
                                                   shadowColor: Colors.transparent,
                                                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),

                                                 ),
                                                 onPressed: (){
                                                 },
                                                 child: const Text(
                                                   "Смотреть", style: TextStyle(fontSize: 18, color: Colors.white),
                                                 ),
                                               ),

                                             ),
                                             const SizedBox(width:12),
                                             ElevatedButton(

                                               style: ElevatedButton.styleFrom(
                                                 fixedSize: const Size(153, 50),
                                                 foregroundColor: Colors.transparent,
                                                 backgroundColor: const Color(0x33ffffff),
                                                 surfaceTintColor: Colors.transparent,
                                                 shadowColor: Colors.transparent,
                                                 shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),

                                               ),
                                               onPressed: (){
                                                 //context.goNamed('registration_by_email');

                                               },
                                               child: const Text(
                                                 "О фильме", style: TextStyle(fontSize: 18, color: Colors.white),
                                               ),
                                             ),

                                           ],
                                         ),
                                       ),


                                     ],
                                   ),
                                   Positioned(
                                     top:0,
                                     left: 338,
                                     child: Container(

                                     alignment: Alignment.centerRight,
                                     height: 448,
                                     child:
                                     CachedNetworkImage(
                                         imageUrl: state.filmInStage.mainImg,
                                         fit: BoxFit.contain
                                     ),
                                       ),
                                   ),
                                 ],
                               ));


                       }
                       if (state is StageLoadedErrorState) {
                         return Center(
                           child: Text(state.exception.toString()),
                         );
                       }
                       return SizedBox(

                       width: MediaQuery.of(context).size.width*MediaQuery.of(context).devicePixelRatio,
                       height: 340,
                       child: const Center(child: CircularProgressIndicator()));

                     }
                     ),
                   ),
                 ]
                 ,
               ),
            const SizedBox(height: 47,),
            BlocBuilder<LentaBloc, LentaState>(
                bloc:lentaBloc,
                builder: (BuildContext context, state) {
                  if (state is LentaLoadedSuccessState) {
                    return
                      Stack(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left:85,),
                            width: MediaQuery.of(context).size.width*MediaQuery.of(context).devicePixelRatio,
                            height: 340,
                            alignment: Alignment.topCenter,

                            child: ListView.separated(
                                separatorBuilder: (BuildContext context, int index) =>
                                const SizedBox(
                                  width: 22,
                                ),
                                physics: const ClampingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount:state.filmsInLenta.filmsInLenta.length,
                                controller: controller,
                                itemBuilder: (BuildContext context, int position) {
                                  return
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Stack(children: [
                                          Container(

                                              height: 299,
                                              width: 199,

                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              clipBehavior: Clip.hardEdge,
                                              child: FittedBox(
                                                fit: BoxFit.cover,
                                                //fit: BoxFit.cover,

                                                child: GestureDetector(
                                                  onTap: () {},
                                                  child: CachedNetworkImage(

                                                      imageUrl: state.filmsInLenta.filmsInLenta[position].img,
                                                      fit: BoxFit.contain
                                                  ),
                                                ),
                                              )),

                                        ]),
                                        const SizedBox(height: 10,),

                                        Text(state.filmsInLenta.filmsInLenta[position].name,
                                            style: const TextStyle(
                                                fontSize: 13,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500)),

                                      ],
                                    );
                                }
                            ),
                          ),

                        ],
                      );


                  }
                  if (state is LentaLoadedErrorState) {
                    return Center(
                      child: Text(state.toString()),
                    );
                  }
                  return const SizedBox();
                }
            ),
            const SizedBox(height: 57,),
            Container(
                padding: const EdgeInsets.only(left:85,),

                child: BlocBuilder<TopBloc, TopState>(
                    bloc:topBloc,
                    builder: (BuildContext context, state) {
                      if (state is TopLoadedSuccessState) {
                        return
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  SizedBox(
                                      height: 33,
                                      width: 100,
                                      child:
                                      Image(
                                          height: 33,
                                          width: 100,
                                          fit: BoxFit.contain,
                                          image: AssetImage('images/top/top.png')
                                      )),
                                  SizedBox(width: 10,),
                                  Text('просмотров за неделю', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white)),

                                ],
                              ),
                              const SizedBox(height: 12,),
                              Stack(
                                children: [
                                  Container(

                                    width: MediaQuery.of(context).size.width*MediaQuery.of(context).devicePixelRatio,
                                    height: 250,
                                    alignment: Alignment.topCenter,
                                    margin: const EdgeInsets.only(bottom: 60),
                                    child: ListView.separated(
                                        separatorBuilder: (BuildContext context, int index) =>
                                        const SizedBox(
                                          width: 25,
                                        ),
                                        physics: const ClampingScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        itemCount:state.filmsInTop.filmsInTop.length,
                                        controller: controller,
                                        itemBuilder: (BuildContext context, int position) {
                                          return
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Stack(children: [
                                                  Container(
                                                      height: 250,
                                                      width: 280,

                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(20),
                                                      ),
                                                      clipBehavior: Clip.hardEdge,
                                                      child: Stack(
                                                        children: [
                                                        Container(
                                                          margin: const EdgeInsets.only(top:20),
                                                            width:120,
                                                            height:196,
                                                            child: FittedBox(
                                                              fit: BoxFit.cover,
                                                              child: GestureDetector(
                                                                onTap: () {},
                                                                child: CachedNetworkImage(

                                                                    imageUrl: state.filmsInTop.filmsInTop[position].rankImg,
                                                                    fit: BoxFit.contain
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Positioned(
                                                            left:80,
                                                            child:
                                                          Container(
                                                            width:200,
                                                            height:250,
                                                            decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.circular(20),

                                                            ),
                                                            clipBehavior: Clip.hardEdge,
                                                            child: FittedBox(
                                                              fit: BoxFit.cover,
                                                              child: GestureDetector(
                                                                onTap: () {},
                                                                child: CachedNetworkImage(

                                                                    imageUrl: state.filmsInTop.filmsInTop[position].mainImg,
                                                                    fit: BoxFit.contain
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          )
                                                        ],
                                                      )),

                                                ]),


                                              ],
                                            );
                                        }
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          );


                      }
                      if (state is LentaLoadedErrorState) {
                        return Center(
                          child: Text(state.toString()),
                        );
                      }
                      return const SizedBox();
                    }
                )),

          ],
        ),
      )



    );
  }
}
