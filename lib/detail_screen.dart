import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:who_app/main_screen.dart';
import 'package:who_app/model/virus_data.dart';

var nameTitleStyle = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w700,
  fontSize: 26.0,
  color: Colors.blue,
);

var familiTextTitle = TextStyle(
  fontFamily: 'Poppins',
  fontSize: 20.0,
  color: Colors.grey,
);

var titleTaksonomyText = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w700,
  color: Colors.blueAccent,
);

var descriptionTaksonomyText = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.grey,
);

var titleTaksonomyWebText = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.w700,
);

var descriptionTaksonomyWebText = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.grey,
);

class DetailScreen extends StatelessWidget {
  final VirusData virus;

  DetailScreen({required this.virus});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebPage(virus: virus);
        } else {
          return DetailMobilePage(virus: virus);
        }
      },
    );
  }
}

class DetailWebPage extends StatefulWidget {
  final VirusData virus;

  DetailWebPage({required this.virus});
  @override
  _DetailWebPage createState() => _DetailWebPage();
}

class _DetailWebPage extends State<DetailWebPage> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: kIsWeb ? null : AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: Container(
            width: screenWidth <= 1200 ? 800 : 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Viruspedia - ' + widget.virus.nameVirus,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    color: Colors.blue,
                    fontSize: 26,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(widget.virus.imageAsset),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          SizedBox(height: 16),
                          Scrollbar(
                            isAlwaysShown: true,
                            controller: _scrollController,
                            child: Container(
                              height: 150,
                              padding: const EdgeInsets.only(bottom: 16),
                              child: ListView(
                                controller: _scrollController,
                                scrollDirection: Axis.horizontal,
                                children: widget.virus.imageUrls.map((url) {
                                  return Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.network(url),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Superdomain Virus : ",
                                    style: titleTaksonomyWebText,
                                  ),
                                  Text(
                                    widget.virus.superDomainVirus,
                                    style: descriptionTaksonomyWebText,
                                  )
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Domain Virus : ",
                                    style: titleTaksonomyWebText,
                                  ),
                                  Text(
                                    widget.virus.domainVirus,
                                    style: descriptionTaksonomyWebText,
                                  )
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "World Virus : ",
                                    style: titleTaksonomyWebText,
                                  ),
                                  Text(
                                    widget.virus.worldVirus,
                                    style: descriptionTaksonomyWebText,
                                  )
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Kingdom Virus : ",
                                    style: titleTaksonomyWebText,
                                  ),
                                  Text(
                                    widget.virus.kingdomVirus,
                                    style: descriptionTaksonomyWebText,
                                  )
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Filum Virus : ",
                                    style: titleTaksonomyWebText,
                                  ),
                                  Text(
                                    widget.virus.filumVirus,
                                    style: descriptionTaksonomyWebText,
                                  )
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Class Virus : ",
                                    style: titleTaksonomyWebText,
                                  ),
                                  Text(
                                    widget.virus.classVirus,
                                    style: descriptionTaksonomyWebText,
                                  )
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Ordo Virus : ",
                                    style: titleTaksonomyWebText,
                                  ),
                                  Text(
                                    widget.virus.ordoVirus,
                                    style: descriptionTaksonomyWebText,
                                  )
                                ],
                              ),
                              SizedBox(height: 8.0),
                              Row(
                                children: <Widget>[
                                  Text(
                                    "Famili Virus : ",
                                    style: titleTaksonomyWebText,
                                  ),
                                  Text(
                                    widget.virus.familiVirus,
                                    style: descriptionTaksonomyWebText,
                                  )
                                ],
                              ),
                              SizedBox(height: 1.0),
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Text(
                                  widget.virus.description,
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  FavoriteButton(),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}

class DetailMobilePage extends StatelessWidget {
  final VirusData virus;

  const DetailMobilePage({required this.virus});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // make stack
            Stack(
              children: <Widget>[
                Image.asset(virus.imageAsset),
                SafeArea(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        FavoriteButton()
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 16.0),
              child: Text(virus.nameVirus,
                  textAlign: TextAlign.center, style: nameTitleStyle),
            ),
            Container(
              child: Text(
                virus.familiVirus,
                textAlign: TextAlign.center,
                style: familiTextTitle,
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "Superdomain Virus",
                              style: titleTaksonomyText,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              virus.superDomainVirus,
                              style: descriptionTaksonomyText,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Domain Virus",
                              style: titleTaksonomyText,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              virus.domainVirus,
                              style: descriptionTaksonomyText,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "World Virus",
                              style: titleTaksonomyText,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              virus.worldVirus,
                              style: descriptionTaksonomyText,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Kingdom Virus",
                              style: titleTaksonomyText,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              virus.kingdomVirus,
                              style: descriptionTaksonomyText,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "Filum Virus",
                              style: titleTaksonomyText,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              virus.filumVirus,
                              style: descriptionTaksonomyText,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Class Virus",
                              style: titleTaksonomyText,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              virus.classVirus,
                              style: descriptionTaksonomyText,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text(
                              "Ordo Virus",
                              style: titleTaksonomyText,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              virus.ordoVirus,
                              style: descriptionTaksonomyText,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              "Famili Virus",
                              style: titleTaksonomyText,
                            ),
                            SizedBox(height: 8.0),
                            Text(
                              virus.familiVirus,
                              style: descriptionTaksonomyText,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text(
                virus.description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: virus.imageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
