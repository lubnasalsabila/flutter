import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/fback.jpeg"),
            fit: BoxFit.cover, 
          ),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 40.0, 0, 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage('images/f.jpg'),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Lubna Salsabila",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                    ],
                  ),
                ),

                // First Card: About
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Color(0xFFE0B0FF),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "About",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Halo semuanya, saya Siti Lubna Salsabila Muslimah dari rombel PPLG XII-2 rayon Cisarua 4, saya adalah anak ke-3 dari 4 bersaudara tanggal lahir saya 18 Juli 2007 dan saya lahir di Bogor, salam kenal semuanya. saya sekarang lagi belajar flutter di ruangan 322 sama ka Alvin",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Second Card: History
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  margin: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.white,
                          Color(0xFFE0B0FF),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "History",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Halo semuanya, saya Siti Lubna Salsabila Muslimah dari rombel PPLG XII-2 rayon Cisarua 4, saya adalah anak ke-3 dari 4 bersaudara tanggal lahir saya 18 Juli 2007 dan saya lahir di Bogor, salam kenal semuanya.",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Nis saya 12209428, zodiak saya adalah cancer, mbti saya adalah INFP",
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Third Card: Skill
                Container(
                  width: MediaQuery.of(context).size.width * 10,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    margin: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white,
                            Color(0xFFE0B0FF),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Skill",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "HTML",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 17, color: Colors.black),
                            ),
                            Text(
                              "CSS",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 17, color: Colors.black),
                            ),
                            Text(
                              "LARAVEL",
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 17, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}