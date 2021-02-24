import 'package:cursoflutter/presenter/build_view.dart';
import 'package:cursoflutter/utils/styles.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  int newInst = 1;
  String viewName = 'NewsList';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black38,
        ),
        backgroundColor: Colors.white,
        title: Text(
          'BIT News',
          style: TextStyle(
            color: Colors.black38,
            fontSize: 18,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.favorite,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white54,

                /* Opcion para insertar imagen local*/
                child: Image.asset(
                  'assets/img/icp.png',
                ), /* Fin opción para insertar imagen local*/
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                setState(() {
                  newInst = 1;
                  viewName = 'NewsList';
                });
              },
              leading: Icon(Icons.list),
              title: Text(
                'All articles mentioning Apple from yesterday, sorted by popular publishers first.',
                style: EstTex.draOptM,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                setState(() {
                  newInst = 2;
                  viewName = 'NewsList';
                });
              },
              leading: Icon(Icons.list),
              title: Text(
                'All articles about Tesla from the last month, sorted by recent first.',
                style: EstTex.draOptM,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                setState(() {
                  newInst = 3;
                  viewName = 'NewsList';
                });
              },
              leading: Icon(Icons.list),
              title: Text(
                'Top business headlines in the US right now.',
                style: EstTex.draOptM,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                setState(() {
                  newInst = 4;
                  viewName = 'NewsList';
                });
              },
              leading: Icon(Icons.list),
              title: Text(
                'Top headlines from TechCrunch right now.',
                style: EstTex.draOptM,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                setState(() {
                  newInst = 5;
                  viewName = 'NewsList';
                });
              },
              leading: Icon(Icons.list),
              title: Text(
                'All articles published by the Wall Street Journal in the last 6 months, sorted by recent first.',
                style: EstTex.draOptM,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(
          right: 10,
          left: 10,
        ),
        child: BuildView(viewName: viewName, intNews: newInst),
      ),
    );
  }
}

/*  Opción para traer imgen de internet
    Se ubica como child de DrawerHeader
                Image.network(
                  'https://bit.institute/images/Instituto-Cursos-Programacion.png',
                ),
                Fin opción para traer imgen de internet  */
