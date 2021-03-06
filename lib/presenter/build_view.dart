import 'package:cursoflutter/data/apiService.dart';
import 'package:cursoflutter/presenter/build_itemlist.dart';
import 'package:flutter/material.dart';

class BuildView extends StatelessWidget {
  final String viewName;
  final int intNews;

  BuildView({@required this.viewName, @required this.intNews});

  @override
  Widget build(BuildContext context) {
    switch (viewName) {
      case 'NewsList':
        return Container(
          child: Center(
            child: Container(
              child: FutureBuilder(
                future: ApiService().getDio(optionUrl: intNews),
                builder: (context, retornado) {
                  if (retornado.hasData) {
                    return ListView.builder(
                      itemCount: (retornado.data).articlesList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return BuildItemList(
                            retornadoData:
                                (retornado.data).articlesList[index]);
                      },
                    );
                  } else if (retornado.hasError) {
                    return Container();
                  }

                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ),
        );
      case 'FavoriteList':
        return Container();

      default:
        return Container();
    }
  }
}
