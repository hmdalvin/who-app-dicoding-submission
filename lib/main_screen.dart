import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:who_app/detail_screen.dart';
import 'package:who_app/model/virus_data.dart';

var nameTextStyle = TextStyle(
  fontSize: 14.0,
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w700,
  color: Colors.blue,
);

var familiDescriptionTextStyle = TextStyle(
  color: Colors.grey,
  fontFamily: 'Poppins',
);

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constaints) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              'WHO Viruspedia',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constaints.maxWidth <= 600) {
                return VirusPediaList();
              } else if (constaints.maxWidth <= 1200) {
                return VirusPediaGrid(gridCount: 4);
              } else {
                return VirusPediaGrid(gridCount: 6);
              }
            },
          ),
        );
      },
    );
  }
}

class VirusPediaLis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final VirusData virus = virusDataList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(virus: virus);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(virus.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            virus.nameVirus,
                            style: nameTextStyle,
                          ),
                          SizedBox(height: 3),
                          Text(
                            virus.familiVirus,
                            style: familiDescriptionTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: virusDataList.length,
      ),
    );
  }
}

class VirusPediaGrid extends StatelessWidget {
  final int gridCount;

  VirusPediaGrid({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      isAlwaysShown: true,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: GridView.count(
          crossAxisCount: gridCount,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: virusDataList.map((virus) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(virus: virus);
                }));
              },
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                      child: Image.asset(
                        virus.imageAsset,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        virus.nameVirus,
                        style: nameTextStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                      child: Text(
                        virus.familiVirus,
                        style: familiDescriptionTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

// Test
class VirusPediaList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemBuilder: (context, index) {
          final VirusData virus = virusDataList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(virus: virus);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(virus.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            virus.nameVirus,
                            style: nameTextStyle,
                          ),
                          SizedBox(height: 3),
                          Text(
                            virus.familiVirus,
                            style: familiDescriptionTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: virusDataList.length,
      ),
    );
  }
}
