import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String movie =
        // TODO Cambiar luego por una instancia de movie
        ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    return Scaffold(
        body: CustomScrollView(
      slivers: [ _CustomAppBar(),
      SliverList(
        delegate: SliverChildListDelegate([
        
      ])
      )
      
      ],
    ));
  }
}

class _CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          alignment: Alignment.bottomCenter,
          width: double.infinity,
          color: Colors.black12,
          child: Text('movie.tittle',
          style: TextStyle( fontSize: 16 ),
          ),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('http://via.placeholder.com/500x300'),
          fit: BoxFit.cover,
        )
      ),
      
    );
  }
}


class _PosterAndTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only( top: 20),
    
      
    );
  }
}
